public module sys/dom/file/fileCallback

// Interface FileCallback (generated by esidl 0.2.0).

import sys/dom/types

/* safe and unsafe conversion from all types including `any */
external inline maybeFileCallback  : forall<a> (a) -> maybe<fileCallback>
{ inline "(#1.toString()==='[object FileCallback]'?std_core.Just(#1):std_core.Nothing)" }
external inline toFileCallback : forall<a> (a) -> exn fileCallback
{ inline "(#1.toString()==='[object FileCallback]'?#1:std_core.error('toFileCallback: cast failed'))" }


// FileCallback implements FileCallback (supplemental)
external inline handleEvent : (this: fileCallback, file: file) -> dom ()
{ inline "#1.handleEvent(#2)" }

