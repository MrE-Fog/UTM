//
// Copyright © 2021 osy. All rights reserved.
//
// Licensed under the Apache License, Version 2.0 (the "License");
// you may not use this file except in compliance with the License.
// You may obtain a copy of the License at
//
//     http://www.apache.org/licenses/LICENSE-2.0
//
// Unless required by applicable law or agreed to in writing, software
// distributed under the License is distributed on an "AS IS" BASIS,
// WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
// See the License for the specific language governing permissions and
// limitations under the License.
//

import SwiftUI

#if os(macOS)
@available(macOS 11, *)
struct BigWhiteSpinner: NSViewRepresentable {
    func makeNSView(context: Context) -> NSProgressIndicator {
        let view = NSProgressIndicator()
        view.style = .spinning
        view.startAnimation(self)
        return view
    }
    
    func updateNSView(_ nsView: NSProgressIndicator, context: Context) {
    }
}
#else // iOS
@available(iOS 14, *)
struct BigWhiteSpinner: UIViewRepresentable {
    func makeUIView(context: Context) -> UIActivityIndicatorView {
        let view = UIActivityIndicatorView(style: .large)
        view.color = .white
        view.startAnimating()
        return view
    }
    
    func updateUIView(_ uiView: UIActivityIndicatorView, context: Context) {
    }
}
#endif

@available(iOS 14, macOS 11, *)
struct BigWhiteSpinner_Previews: PreviewProvider {
    static var previews: some View {
        BigWhiteSpinner()
    }
}
