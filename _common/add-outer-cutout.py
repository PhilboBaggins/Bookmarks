#!/usr/bin/env python

import ezdxf

def addOuterCutout(inputFileName, outputFileName, sizeX, sizeY):
    doc = ezdxf.readfile(inputFileName)
    msp = doc.modelspace()

    msp.add_line((0,     0    ), (0,     sizeY), dxfattribs={'color': 1})
    msp.add_line((0,     sizeY), (sizeX, sizeY), dxfattribs={'color': 1})
    msp.add_line((sizeX, sizeY), (sizeX, 0    ), dxfattribs={'color': 1})
    msp.add_line((sizeX, 0    ), (0,     0    ), dxfattribs={'color': 1})

    doc.saveas(outputFileName)


if __name__ == '__main__':
    from argparse import ArgumentParser
    parser = ArgumentParser()
    parser.add_argument('inputFile')
    parser.add_argument('--version', action='version', version='%(prog)s 0.1')
    parser.add_argument('-o', '--output',
                        action='store',
                        dest='outputFile',
                        default=None,
                        help='Output file',)
    parser.add_argument('-x', '--sizex',
                        action='store',
                        dest='sizeX',
                        default=50,
                        help='Horizontal size',)
    parser.add_argument('-y', '--sizey',
                        action='store',
                        dest='sizeY',
                        default=175,
                        help='Vertical size',)
    args = parser.parse_args()

    outputFile = args.outputFile if args.outputFile else args.inputFile
    addOuterCutout(args.inputFile, outputFile, args.sizeX, args.sizeY)
