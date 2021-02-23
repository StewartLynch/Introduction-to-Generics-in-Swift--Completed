
import Foundation

public func code(for title: String,
                    sampleCode: () -> Void) {
print("""
_____________________________
Results for: '\(title)'
/////////////////////////////
""")
  sampleCode()
}
