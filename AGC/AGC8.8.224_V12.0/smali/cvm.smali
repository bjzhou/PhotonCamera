.class public final Lcvm;
.super Ljava/lang/Object;


# instance fields
.field public final a:Ljava/lang/Object;

.field public final b:Ljava/lang/Object;

.field public final c:Ljava/lang/Object;

.field public final d:Ljava/lang/Object;


# direct methods
.method public constructor <init>()V
    .locals 8

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcvm;->c:Ljava/lang/Object;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcvm;->a:Ljava/lang/Object;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcvm;->b:Ljava/lang/Object;

    const-string v0, "[/*?\\[\\]]"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    iput-object v0, p0, Lcvm;->d:Ljava/lang/Object;

    :try_start_0
    const-string v0, "http://www.w3.org/XML/1998/namespace"

    const-string v1, "xml"

    invoke-virtual {p0, v0, v1}, Lcvm;->e(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    const-string v0, "http://www.w3.org/1999/02/22-rdf-syntax-ns#"

    const-string v1, "rdf"

    invoke-virtual {p0, v0, v1}, Lcvm;->e(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    const-string v0, "http://purl.org/dc/elements/1.1/"

    const-string v1, "dc"

    invoke-virtual {p0, v0, v1}, Lcvm;->e(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    const-string v0, "http://iptc.org/std/Iptc4xmpCore/1.0/xmlns/"

    const-string v1, "Iptc4xmpCore"

    invoke-virtual {p0, v0, v1}, Lcvm;->e(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    const-string v0, "adobe:ns:meta/"

    const-string v1, "x"

    invoke-virtual {p0, v0, v1}, Lcvm;->e(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    const-string v0, "http://ns.adobe.com/iX/1.0/"

    const-string v1, "iX"

    invoke-virtual {p0, v0, v1}, Lcvm;->e(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    const-string v0, "http://ns.adobe.com/xap/1.0/"

    const-string v1, "xmp"

    invoke-virtual {p0, v0, v1}, Lcvm;->e(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    const-string v0, "http://ns.adobe.com/xap/1.0/rights/"

    const-string v1, "xmpRights"

    invoke-virtual {p0, v0, v1}, Lcvm;->e(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    const-string v0, "http://ns.adobe.com/xap/1.0/mm/"

    const-string v1, "xmpMM"

    invoke-virtual {p0, v0, v1}, Lcvm;->e(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    const-string v0, "http://ns.adobe.com/xap/1.0/bj/"

    const-string v1, "xmpBJ"

    invoke-virtual {p0, v0, v1}, Lcvm;->e(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    const-string v0, "http://ns.adobe.com/xmp/note/"

    const-string v1, "xmpNote"

    invoke-virtual {p0, v0, v1}, Lcvm;->e(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    const-string v0, "http://ns.adobe.com/pdf/1.3/"

    const-string v1, "pdf"

    invoke-virtual {p0, v0, v1}, Lcvm;->e(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    const-string v0, "http://ns.adobe.com/pdfx/1.3/"

    const-string v1, "pdfx"

    invoke-virtual {p0, v0, v1}, Lcvm;->e(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    const-string v0, "http://www.npes.org/pdfx/ns/id/"

    const-string v1, "pdfxid"

    invoke-virtual {p0, v0, v1}, Lcvm;->e(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    const-string v0, "http://www.aiim.org/pdfa/ns/schema#"

    const-string v1, "pdfaSchema"

    invoke-virtual {p0, v0, v1}, Lcvm;->e(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    const-string v0, "http://www.aiim.org/pdfa/ns/property#"

    const-string v1, "pdfaProperty"

    invoke-virtual {p0, v0, v1}, Lcvm;->e(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    const-string v0, "http://www.aiim.org/pdfa/ns/type#"

    const-string v1, "pdfaType"

    invoke-virtual {p0, v0, v1}, Lcvm;->e(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    const-string v0, "http://www.aiim.org/pdfa/ns/field#"

    const-string v1, "pdfaField"

    invoke-virtual {p0, v0, v1}, Lcvm;->e(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    const-string v0, "http://www.aiim.org/pdfa/ns/id/"

    const-string v1, "pdfaid"

    invoke-virtual {p0, v0, v1}, Lcvm;->e(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    const-string v0, "http://www.aiim.org/pdfa/ns/extension/"

    const-string v1, "pdfaExtension"

    invoke-virtual {p0, v0, v1}, Lcvm;->e(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    const-string v0, "http://ns.adobe.com/photoshop/1.0/"

    const-string v1, "photoshop"

    invoke-virtual {p0, v0, v1}, Lcvm;->e(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    const-string v0, "http://ns.adobe.com/album/1.0/"

    const-string v1, "album"

    invoke-virtual {p0, v0, v1}, Lcvm;->e(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    const-string v0, "http://ns.adobe.com/exif/1.0/"

    const-string v1, "exif"

    invoke-virtual {p0, v0, v1}, Lcvm;->e(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    const-string v0, "http://ns.adobe.com/exif/1.0/aux/"

    const-string v1, "aux"

    invoke-virtual {p0, v0, v1}, Lcvm;->e(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    const-string v0, "http://ns.adobe.com/tiff/1.0/"

    const-string v1, "tiff"

    invoke-virtual {p0, v0, v1}, Lcvm;->e(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    const-string v0, "http://ns.adobe.com/png/1.0/"

    const-string v1, "png"

    invoke-virtual {p0, v0, v1}, Lcvm;->e(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    const-string v0, "http://ns.adobe.com/jpeg/1.0/"

    const-string v1, "jpeg"

    invoke-virtual {p0, v0, v1}, Lcvm;->e(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    const-string v0, "http://ns.adobe.com/jp2k/1.0/"

    const-string v1, "jp2k"

    invoke-virtual {p0, v0, v1}, Lcvm;->e(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    const-string v0, "http://ns.adobe.com/camera-raw-settings/1.0/"

    const-string v1, "crs"

    invoke-virtual {p0, v0, v1}, Lcvm;->e(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    const-string v0, "http://ns.adobe.com/StockPhoto/1.0/"

    const-string v1, "bmsp"

    invoke-virtual {p0, v0, v1}, Lcvm;->e(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    const-string v0, "http://ns.adobe.com/creatorAtom/1.0/"

    const-string v1, "creatorAtom"

    invoke-virtual {p0, v0, v1}, Lcvm;->e(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    const-string v0, "http://ns.adobe.com/asf/1.0/"

    const-string v1, "asf"

    invoke-virtual {p0, v0, v1}, Lcvm;->e(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    const-string v0, "http://ns.adobe.com/xmp/wav/1.0/"

    const-string v1, "wav"

    invoke-virtual {p0, v0, v1}, Lcvm;->e(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    const-string v0, "http://ns.adobe.com/xmp/1.0/DynamicMedia/"

    const-string v1, "xmpDM"

    invoke-virtual {p0, v0, v1}, Lcvm;->e(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    const-string v0, "http://ns.adobe.com/xmp/transient/1.0/"

    const-string v1, "xmpx"

    invoke-virtual {p0, v0, v1}, Lcvm;->e(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    const-string v0, "http://ns.adobe.com/xap/1.0/t/"

    const-string v1, "xmpT"

    invoke-virtual {p0, v0, v1}, Lcvm;->e(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    const-string v0, "http://ns.adobe.com/xap/1.0/t/pg/"

    const-string v1, "xmpTPg"

    invoke-virtual {p0, v0, v1}, Lcvm;->e(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    const-string v0, "http://ns.adobe.com/xap/1.0/g/"

    const-string v1, "xmpG"

    invoke-virtual {p0, v0, v1}, Lcvm;->e(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    const-string v0, "http://ns.adobe.com/xap/1.0/g/img/"

    const-string v1, "xmpGImg"

    invoke-virtual {p0, v0, v1}, Lcvm;->e(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    const-string v0, "http://ns.adobe.com/xap/1.0/sType/Font#"

    const-string v1, "stFNT"

    invoke-virtual {p0, v0, v1}, Lcvm;->e(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    const-string v0, "http://ns.adobe.com/xap/1.0/sType/Dimensions#"

    const-string v1, "stDim"

    invoke-virtual {p0, v0, v1}, Lcvm;->e(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    const-string v0, "http://ns.adobe.com/xap/1.0/sType/ResourceEvent#"

    const-string v1, "stEvt"

    invoke-virtual {p0, v0, v1}, Lcvm;->e(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    const-string v0, "http://ns.adobe.com/xap/1.0/sType/ResourceRef#"

    const-string v1, "stRef"

    invoke-virtual {p0, v0, v1}, Lcvm;->e(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    const-string v0, "http://ns.adobe.com/xap/1.0/sType/Version#"

    const-string v1, "stVer"

    invoke-virtual {p0, v0, v1}, Lcvm;->e(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    const-string v0, "http://ns.adobe.com/xap/1.0/sType/Job#"

    const-string v1, "stJob"

    invoke-virtual {p0, v0, v1}, Lcvm;->e(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    const-string v0, "http://ns.adobe.com/xap/1.0/sType/ManifestItem#"

    const-string v1, "stMfs"

    invoke-virtual {p0, v0, v1}, Lcvm;->e(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    const-string v0, "http://ns.adobe.com/xmp/Identifier/qual/1.0/"

    const-string v1, "xmpidq"

    invoke-virtual {p0, v0, v1}, Lcvm;->e(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    new-instance v0, Lbfo;

    invoke-direct {v0}, Lbfo;-><init>()V

    const/4 v1, 0x1

    const/16 v2, 0x600

    invoke-virtual {v0, v2, v1}, Lbfq;->f(IZ)V

    new-instance v7, Lbfo;

    invoke-direct {v7}, Lbfo;-><init>()V

    const/16 v2, 0x1e00

    invoke-virtual {v7, v2, v1}, Lbfq;->f(IZ)V

    const-string v2, "http://ns.adobe.com/xap/1.0/"

    const-string v3, "Author"

    const-string v4, "http://purl.org/dc/elements/1.1/"

    const-string v5, "creator"

    move-object v1, p0

    move-object v6, v0

    invoke-virtual/range {v1 .. v6}, Lcvm;->f(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lbfo;)V

    const-string v2, "http://ns.adobe.com/xap/1.0/"

    const-string v3, "Authors"

    const-string v4, "http://purl.org/dc/elements/1.1/"

    const-string v5, "creator"

    const/4 v6, 0x0

    move-object v1, p0

    invoke-virtual/range {v1 .. v6}, Lcvm;->f(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lbfo;)V

    const-string v2, "http://ns.adobe.com/xap/1.0/"

    const-string v3, "Description"

    const-string v4, "http://purl.org/dc/elements/1.1/"

    const-string v5, "description"

    const/4 v6, 0x0

    move-object v1, p0

    invoke-virtual/range {v1 .. v6}, Lcvm;->f(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lbfo;)V

    const-string v2, "http://ns.adobe.com/xap/1.0/"

    const-string v3, "Format"

    const-string v4, "http://purl.org/dc/elements/1.1/"

    const-string v5, "format"

    const/4 v6, 0x0

    move-object v1, p0

    invoke-virtual/range {v1 .. v6}, Lcvm;->f(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lbfo;)V

    const-string v2, "http://ns.adobe.com/xap/1.0/"

    const-string v3, "Keywords"

    const-string v4, "http://purl.org/dc/elements/1.1/"

    const-string v5, "subject"

    const/4 v6, 0x0

    move-object v1, p0

    invoke-virtual/range {v1 .. v6}, Lcvm;->f(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lbfo;)V

    const-string v2, "http://ns.adobe.com/xap/1.0/"

    const-string v3, "Locale"

    const-string v4, "http://purl.org/dc/elements/1.1/"

    const-string v5, "language"

    const/4 v6, 0x0

    move-object v1, p0

    invoke-virtual/range {v1 .. v6}, Lcvm;->f(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lbfo;)V

    const-string v2, "http://ns.adobe.com/xap/1.0/"

    const-string v3, "Title"

    const-string v4, "http://purl.org/dc/elements/1.1/"

    const-string v5, "title"

    const/4 v6, 0x0

    move-object v1, p0

    invoke-virtual/range {v1 .. v6}, Lcvm;->f(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lbfo;)V

    const-string v2, "http://ns.adobe.com/xap/1.0/rights/"

    const-string v3, "Copyright"

    const-string v4, "http://purl.org/dc/elements/1.1/"

    const-string v5, "rights"

    const/4 v6, 0x0

    move-object v1, p0

    invoke-virtual/range {v1 .. v6}, Lcvm;->f(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lbfo;)V

    const-string v2, "http://ns.adobe.com/pdf/1.3/"

    const-string v3, "Author"

    const-string v4, "http://purl.org/dc/elements/1.1/"

    const-string v5, "creator"

    move-object v1, p0

    move-object v6, v0

    invoke-virtual/range {v1 .. v6}, Lcvm;->f(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lbfo;)V

    const-string v2, "http://ns.adobe.com/pdf/1.3/"

    const-string v3, "BaseURL"

    const-string v4, "http://ns.adobe.com/xap/1.0/"

    const-string v5, "BaseURL"

    const/4 v6, 0x0

    move-object v1, p0

    invoke-virtual/range {v1 .. v6}, Lcvm;->f(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lbfo;)V

    const-string v2, "http://ns.adobe.com/pdf/1.3/"

    const-string v3, "CreationDate"

    const-string v4, "http://ns.adobe.com/xap/1.0/"

    const-string v5, "CreateDate"

    const/4 v6, 0x0

    move-object v1, p0

    invoke-virtual/range {v1 .. v6}, Lcvm;->f(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lbfo;)V

    const-string v2, "http://ns.adobe.com/pdf/1.3/"

    const-string v3, "Creator"

    const-string v4, "http://ns.adobe.com/xap/1.0/"

    const-string v5, "CreatorTool"

    const/4 v6, 0x0

    move-object v1, p0

    invoke-virtual/range {v1 .. v6}, Lcvm;->f(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lbfo;)V

    const-string v2, "http://ns.adobe.com/pdf/1.3/"

    const-string v3, "ModDate"

    const-string v4, "http://ns.adobe.com/xap/1.0/"

    const-string v5, "ModifyDate"

    const/4 v6, 0x0

    move-object v1, p0

    invoke-virtual/range {v1 .. v6}, Lcvm;->f(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lbfo;)V

    const-string v2, "http://ns.adobe.com/pdf/1.3/"

    const-string v3, "Subject"

    const-string v4, "http://purl.org/dc/elements/1.1/"

    const-string v5, "description"

    move-object v1, p0

    move-object v6, v7

    invoke-virtual/range {v1 .. v6}, Lcvm;->f(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lbfo;)V

    const-string v2, "http://ns.adobe.com/pdf/1.3/"

    const-string v3, "Title"

    const-string v4, "http://purl.org/dc/elements/1.1/"

    const-string v5, "title"

    move-object v1, p0

    move-object v6, v7

    invoke-virtual/range {v1 .. v6}, Lcvm;->f(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lbfo;)V

    const-string v2, "http://ns.adobe.com/photoshop/1.0/"

    const-string v3, "Author"

    const-string v4, "http://purl.org/dc/elements/1.1/"

    const-string v5, "creator"

    move-object v1, p0

    move-object v6, v0

    invoke-virtual/range {v1 .. v6}, Lcvm;->f(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lbfo;)V

    const-string v2, "http://ns.adobe.com/photoshop/1.0/"

    const-string v3, "Caption"

    const-string v4, "http://purl.org/dc/elements/1.1/"

    const-string v5, "description"

    move-object v1, p0

    move-object v6, v7

    invoke-virtual/range {v1 .. v6}, Lcvm;->f(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lbfo;)V

    const-string v2, "http://ns.adobe.com/photoshop/1.0/"

    const-string v3, "Copyright"

    const-string v4, "http://purl.org/dc/elements/1.1/"

    const-string v5, "rights"

    move-object v1, p0

    move-object v6, v7

    invoke-virtual/range {v1 .. v6}, Lcvm;->f(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lbfo;)V

    const-string v2, "http://ns.adobe.com/photoshop/1.0/"

    const-string v3, "Keywords"

    const-string v4, "http://purl.org/dc/elements/1.1/"

    const-string v5, "subject"

    const/4 v6, 0x0

    move-object v1, p0

    invoke-virtual/range {v1 .. v6}, Lcvm;->f(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lbfo;)V

    const-string v2, "http://ns.adobe.com/photoshop/1.0/"

    const-string v3, "Marked"

    const-string v4, "http://ns.adobe.com/xap/1.0/rights/"

    const-string v5, "Marked"

    const/4 v6, 0x0

    move-object v1, p0

    invoke-virtual/range {v1 .. v6}, Lcvm;->f(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lbfo;)V

    const-string v2, "http://ns.adobe.com/photoshop/1.0/"

    const-string v3, "Title"

    const-string v4, "http://purl.org/dc/elements/1.1/"

    const-string v5, "title"

    move-object v1, p0

    move-object v6, v7

    invoke-virtual/range {v1 .. v6}, Lcvm;->f(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lbfo;)V

    const-string v2, "http://ns.adobe.com/photoshop/1.0/"

    const-string v3, "WebStatement"

    const-string v4, "http://ns.adobe.com/xap/1.0/rights/"

    const-string v5, "WebStatement"

    const/4 v6, 0x0

    move-object v1, p0

    invoke-virtual/range {v1 .. v6}, Lcvm;->f(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lbfo;)V

    const-string v2, "http://ns.adobe.com/tiff/1.0/"

    const-string v3, "Artist"

    const-string v4, "http://purl.org/dc/elements/1.1/"

    const-string v5, "creator"

    move-object v1, p0

    move-object v6, v0

    invoke-virtual/range {v1 .. v6}, Lcvm;->f(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lbfo;)V

    const-string v2, "http://ns.adobe.com/tiff/1.0/"

    const-string v3, "Copyright"

    const-string v4, "http://purl.org/dc/elements/1.1/"

    const-string v5, "rights"

    const/4 v6, 0x0

    move-object v1, p0

    invoke-virtual/range {v1 .. v6}, Lcvm;->f(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lbfo;)V

    const-string v2, "http://ns.adobe.com/tiff/1.0/"

    const-string v3, "DateTime"

    const-string v4, "http://ns.adobe.com/xap/1.0/"

    const-string v5, "ModifyDate"

    const/4 v6, 0x0

    move-object v1, p0

    invoke-virtual/range {v1 .. v6}, Lcvm;->f(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lbfo;)V

    const-string v2, "http://ns.adobe.com/tiff/1.0/"

    const-string v3, "ImageDescription"

    const-string v4, "http://purl.org/dc/elements/1.1/"

    const-string v5, "description"

    const/4 v6, 0x0

    move-object v1, p0

    invoke-virtual/range {v1 .. v6}, Lcvm;->f(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lbfo;)V

    const-string v2, "http://ns.adobe.com/tiff/1.0/"

    const-string v3, "Software"

    const-string v4, "http://ns.adobe.com/xap/1.0/"

    const-string v5, "CreatorTool"

    const/4 v6, 0x0

    move-object v1, p0

    invoke-virtual/range {v1 .. v6}, Lcvm;->f(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lbfo;)V

    const-string v2, "http://ns.adobe.com/png/1.0/"

    const-string v3, "Author"

    const-string v4, "http://purl.org/dc/elements/1.1/"

    const-string v5, "creator"

    move-object v1, p0

    move-object v6, v0

    invoke-virtual/range {v1 .. v6}, Lcvm;->f(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lbfo;)V

    const-string v2, "http://ns.adobe.com/png/1.0/"

    const-string v3, "Copyright"

    const-string v4, "http://purl.org/dc/elements/1.1/"

    const-string v5, "rights"

    move-object v1, p0

    move-object v6, v7

    invoke-virtual/range {v1 .. v6}, Lcvm;->f(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lbfo;)V

    const-string v2, "http://ns.adobe.com/png/1.0/"

    const-string v3, "CreationTime"

    const-string v4, "http://ns.adobe.com/xap/1.0/"

    const-string v5, "CreateDate"

    const/4 v6, 0x0

    move-object v1, p0

    invoke-virtual/range {v1 .. v6}, Lcvm;->f(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lbfo;)V

    const-string v2, "http://ns.adobe.com/png/1.0/"

    const-string v3, "Description"

    const-string v4, "http://purl.org/dc/elements/1.1/"

    const-string v5, "description"

    move-object v1, p0

    move-object v6, v7

    invoke-virtual/range {v1 .. v6}, Lcvm;->f(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lbfo;)V

    const-string v2, "http://ns.adobe.com/png/1.0/"

    const-string v3, "ModificationTime"

    const-string v4, "http://ns.adobe.com/xap/1.0/"

    const-string v5, "ModifyDate"

    const/4 v6, 0x0

    move-object v1, p0

    invoke-virtual/range {v1 .. v6}, Lcvm;->f(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lbfo;)V

    const-string v2, "http://ns.adobe.com/png/1.0/"

    const-string v3, "Software"

    const-string v4, "http://ns.adobe.com/xap/1.0/"

    const-string v5, "CreatorTool"

    const/4 v6, 0x0

    move-object v1, p0

    invoke-virtual/range {v1 .. v6}, Lcvm;->f(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lbfo;)V

    const-string v2, "http://ns.adobe.com/png/1.0/"

    const-string v3, "Title"

    const-string v4, "http://purl.org/dc/elements/1.1/"

    const-string v5, "title"

    move-object v1, p0

    move-object v6, v7

    invoke-virtual/range {v1 .. v6}, Lcvm;->f(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lbfo;)V
    :try_end_0
    .catch Lbeq; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "The XMPSchemaRegistry cannot be initialized!"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public constructor <init>(Landroid/content/Context;Ldjm;Ldjq;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    sget-object v0, Lnmh;->a:Lnmh;

    iput-object v0, p0, Lcvm;->c:Ljava/lang/Object;

    iput-object p1, p0, Lcvm;->b:Ljava/lang/Object;

    iput-object p2, p0, Lcvm;->a:Ljava/lang/Object;

    iput-object p3, p0, Lcvm;->d:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Landroid/hardware/Camera$ShutterCallback;Landroid/hardware/Camera$PictureCallback;Landroid/hardware/Camera$PictureCallback;Landroid/hardware/Camera$PictureCallback;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcvm;->a:Ljava/lang/Object;

    iput-object p2, p0, Lcvm;->b:Ljava/lang/Object;

    iput-object p3, p0, Lcvm;->d:Ljava/lang/Object;

    iput-object p4, p0, Lcvm;->c:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Lbio;Lbio;Lbip;Lbip;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcvm;->b:Ljava/lang/Object;

    iput-object p2, p0, Lcvm;->c:Ljava/lang/Object;

    iput-object p3, p0, Lcvm;->a:Ljava/lang/Object;

    iput-object p4, p0, Lcvm;->d:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Ldja;Ljwy;Ljxn;Ljxn;[B[B[B)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcvm;->c:Ljava/lang/Object;

    iput-object p2, p0, Lcvm;->d:Ljava/lang/Object;

    iput-object p3, p0, Lcvm;->b:Ljava/lang/Object;

    iput-object p4, p0, Lcvm;->a:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Lfuz;Ldxl;Ldxt;Lfjx;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lcvm;->c:Ljava/lang/Object;

    iput-object p3, p0, Lcvm;->a:Ljava/lang/Object;

    iput-object p1, p0, Lcvm;->d:Ljava/lang/Object;

    iput-object p4, p0, Lcvm;->b:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Limx;Lkpo;Lkbc;[B[B)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string p4, "VidFile"

    invoke-static {p4}, Ljvd;->f(Ljava/lang/String;)Ljava/util/concurrent/ExecutorService;

    move-result-object p4

    iput-object p4, p0, Lcvm;->d:Ljava/lang/Object;

    iput-object p1, p0, Lcvm;->a:Ljava/lang/Object;

    iput-object p2, p0, Lcvm;->c:Ljava/lang/Object;

    iput-object p3, p0, Lcvm;->b:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Ljava/util/List;Lbrh;Lbsu;Landroid/content/ContentResolver;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lcvm;->d:Ljava/lang/Object;

    iput-object p3, p0, Lcvm;->b:Ljava/lang/Object;

    iput-object p4, p0, Lcvm;->c:Ljava/lang/Object;

    iput-object p1, p0, Lcvm;->a:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Lken;Lkfl;Lcsc;Lgfz;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcvm;->a:Ljava/lang/Object;

    iput-object p2, p0, Lcvm;->b:Ljava/lang/Object;

    iput-object p3, p0, Lcvm;->c:Ljava/lang/Object;

    iput-object p4, p0, Lcvm;->d:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Lkpb;Lgyq;Lkou;Lmqp;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcvm;->d:Ljava/lang/Object;

    iput-object p2, p0, Lcvm;->b:Ljava/lang/Object;

    iput-object p3, p0, Lcvm;->a:Ljava/lang/Object;

    iput-object p4, p0, Lcvm;->c:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Logd;Logd;Logd;Logd;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcvm;->c:Ljava/lang/Object;

    iput-object p2, p0, Lcvm;->d:Ljava/lang/Object;

    iput-object p3, p0, Lcvm;->a:Ljava/lang/Object;

    iput-object p4, p0, Lcvm;->b:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public final a(Lkll;Ljwu;Lika;Z)Ljxl;
    .locals 8

    sget-object v0, Lika;->f:Lika;

    if-ne p3, v0, :cond_0

    iget-object p3, p0, Lcvm;->a:Ljava/lang/Object;

    move-object v0, p3

    goto :goto_0

    :cond_0
    iget-object p3, p0, Lcvm;->b:Ljava/lang/Object;

    move-object v0, p3

    :goto_0
    iget-object p3, p0, Lcvm;->c:Ljava/lang/Object;

    check-cast p3, Ldja;

    invoke-virtual {p3}, Ldja;->n()Z

    move-result v3

    sget-object v4, Lmpx;->a:Lmpx;

    iget-object p3, p0, Lcvm;->c:Ljava/lang/Object;

    check-cast p3, Ldja;

    iget-object p3, p3, Ldja;->a:Ljava/lang/Object;

    sget-object v1, Ldgu;->a:Ldhk;

    invoke-interface {p3, v1}, Ldhi;->a(Ldhk;)Lj$/util/Optional;

    move-result-object p3

    const/4 v1, 0x0

    invoke-virtual {p3, v1}, Lj$/util/Optional;->orElse(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Ljava/lang/Integer;

    invoke-static {p3}, Lmqp;->h(Ljava/lang/Object;)Lmqp;

    move-result-object v5

    iget-object p3, p0, Lcvm;->c:Ljava/lang/Object;

    check-cast p3, Ldja;

    iget-object p3, p3, Ldja;->a:Ljava/lang/Object;

    sget-object v1, Ldgu;->s:Ldhj;

    invoke-interface {p3, v1}, Ldhi;->k(Ldhj;)Z

    move-result v6

    move-object v1, p2

    move-object v2, p1

    move v7, p4

    invoke-interface/range {v0 .. v7}, Ljxh;->a(Ljwu;Lkll;ZLmqp;Lmqp;ZZ)Lmqp;

    move-result-object p1

    invoke-virtual {p1}, Lmqp;->g()Z

    move-result p2

    const-string p3, "No supported CamcorderProfile."

    invoke-static {p2, p3}, Lmoz;->q(ZLjava/lang/Object;)V

    invoke-virtual {p1}, Lmqp;->c()Ljava/lang/Object;

    invoke-virtual {p1}, Lmqp;->c()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljxl;

    return-object p1
.end method

.method public final b(Lika;)Lcyq;
    .locals 1

    sget-object v0, Lika;->a:Lika;

    invoke-virtual {p1}, Lika;->ordinal()I

    move-result p1

    sparse-switch p1, :sswitch_data_0

    iget-object p1, p0, Lcvm;->d:Ljava/lang/Object;

    invoke-interface {p1}, Logd;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcyq;

    return-object p1

    :sswitch_0
    iget-object p1, p0, Lcvm;->b:Ljava/lang/Object;

    invoke-interface {p1}, Logd;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcyq;

    return-object p1

    :sswitch_1
    iget-object p1, p0, Lcvm;->a:Ljava/lang/Object;

    invoke-interface {p1}, Logd;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcyq;

    return-object p1

    :sswitch_2
    iget-object p1, p0, Lcvm;->c:Ljava/lang/Object;

    invoke-interface {p1}, Logd;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcyq;

    return-object p1

    nop

    :sswitch_data_0
    .sparse-switch
        0x5 -> :sswitch_2
        0x8 -> :sswitch_1
        0x13 -> :sswitch_0
    .end sparse-switch
.end method

.method public final declared-synchronized c(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcvm;->c:Ljava/lang/Object;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object p1

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public final declared-synchronized d(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    monitor-enter p0

    if-eqz p1, :cond_0

    :try_start_0
    const-string v0, ":"

    invoke-virtual {p1, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, ":"

    invoke-virtual {p1, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    :cond_0
    iget-object v0, p0, Lcvm;->a:Ljava/lang/Object;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object p1

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public final declared-synchronized e(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 4

    monitor-enter p0

    :try_start_0
    invoke-static {p1}, Let;->k(Ljava/lang/String;)V

    if-eqz p2, :cond_5

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v0

    if-eqz v0, :cond_5

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    invoke-virtual {p2, v0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    const/16 v1, 0x3a

    if-eq v0, v1, :cond_0

    const-string v0, ":"

    invoke-virtual {p2, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    :cond_0
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    const/4 v1, 0x0

    invoke-virtual {p2, v1, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lbey;->e(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcvm;->c:Ljava/lang/Object;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iget-object v2, p0, Lcvm;->a:Ljava/lang/Object;

    invoke-interface {v2, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_1

    monitor-exit p0

    return-object v0

    :cond_1
    if-eqz v2, :cond_3

    const/4 v0, 0x1

    move-object v2, p2

    :goto_0
    :try_start_1
    iget-object v3, p0, Lcvm;->a:Ljava/lang/Object;

    invoke-interface {v3, v2}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    invoke-virtual {p2, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "_"

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, "_:"

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    move-object p2, v2

    :cond_3
    iget-object v0, p0, Lcvm;->a:Ljava/lang/Object;

    invoke-interface {v0, p2, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcvm;->c:Ljava/lang/Object;

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    return-object p2

    :cond_4
    :try_start_2
    new-instance p1, Lbeq;

    const-string p2, "The prefix is a bad XML name"

    const/16 v0, 0xc9

    invoke-direct {p1, p2, v0}, Lbeq;-><init>(Ljava/lang/String;I)V

    throw p1

    :cond_5
    new-instance p1, Lbeq;

    const-string p2, "Empty prefix"

    const/4 v0, 0x4

    invoke-direct {p1, p2, v0}, Lbeq;-><init>(Ljava/lang/String;I)V

    throw p1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :catchall_0
    move-exception p1

    monitor-exit p0

    goto :goto_2

    :goto_1
    throw p1

    :goto_2
    goto :goto_1
.end method

.method final declared-synchronized f(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lbfo;)V
    .locals 3

    monitor-enter p0

    :try_start_0
    invoke-static {p1}, Let;->k(Ljava/lang/String;)V

    invoke-static {p2}, Let;->j(Ljava/lang/String;)V

    invoke-static {p3}, Let;->k(Ljava/lang/String;)V

    invoke-static {p4}, Let;->j(Ljava/lang/String;)V

    if-eqz p5, :cond_0

    new-instance v0, Lbfo;

    invoke-virtual {p5}, Lbfo;->b()Lbfs;

    move-result-object p5

    const/4 v1, 0x0

    invoke-static {p5, v1}, Leu;->q(Lbfs;Ljava/lang/Object;)Lbfs;

    move-result-object p5

    iget p5, p5, Lbfq;->a:I

    invoke-direct {v0, p5}, Lbfo;-><init>(I)V

    goto :goto_0

    :cond_0
    new-instance v0, Lbfo;

    invoke-direct {v0}, Lbfo;-><init>()V

    :goto_0
    iget-object p5, p0, Lcvm;->d:Ljava/lang/Object;

    check-cast p5, Ljava/util/regex/Pattern;

    invoke-virtual {p5, p2}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object p5

    invoke-virtual {p5}, Ljava/util/regex/Matcher;->find()Z

    move-result p5

    if-nez p5, :cond_5

    iget-object p5, p0, Lcvm;->d:Ljava/lang/Object;

    check-cast p5, Ljava/util/regex/Pattern;

    invoke-virtual {p5, p4}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object p5

    invoke-virtual {p5}, Ljava/util/regex/Matcher;->find()Z

    move-result p5

    if-nez p5, :cond_5

    invoke-virtual {p0, p1}, Lcvm;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p3}, Lcvm;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p5

    const/16 v1, 0x65

    if-eqz p1, :cond_4

    if-eqz p5, :cond_3

    invoke-virtual {p1, p2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iget-object p2, p0, Lcvm;->b:Ljava/lang/Object;

    invoke-interface {p2, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result p2

    const/4 v1, 0x4

    if-nez p2, :cond_2

    iget-object p2, p0, Lcvm;->b:Ljava/lang/Object;

    invoke-virtual {p5, p4}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-interface {p2, v2}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_1

    new-instance p2, Lbfk;

    invoke-direct {p2, p3, p5, p4, v0}, Lbfk;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lbfo;)V

    iget-object p3, p0, Lcvm;->b:Ljava/lang/Object;

    invoke-interface {p3, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :cond_1
    :try_start_1
    new-instance p1, Lbeq;

    const-string p2, "Actual property is already an alias, use the base property"

    invoke-direct {p1, p2, v1}, Lbeq;-><init>(Ljava/lang/String;I)V

    throw p1

    :cond_2
    new-instance p1, Lbeq;

    const-string p2, "Alias is already existing"

    invoke-direct {p1, p2, v1}, Lbeq;-><init>(Ljava/lang/String;I)V

    throw p1

    :cond_3
    new-instance p1, Lbeq;

    const-string p2, "Actual namespace is not registered"

    invoke-direct {p1, p2, v1}, Lbeq;-><init>(Ljava/lang/String;I)V

    throw p1

    :cond_4
    new-instance p1, Lbeq;

    const-string p2, "Alias namespace is not registered"

    invoke-direct {p1, p2, v1}, Lbeq;-><init>(Ljava/lang/String;I)V

    throw p1

    :cond_5
    new-instance p1, Lbeq;

    const-string p2, "Alias and actual property names must be simple"

    const/16 p3, 0x66

    invoke-direct {p1, p2, p3}, Lbeq;-><init>(Ljava/lang/String;I)V

    throw p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public final declared-synchronized g(Ljava/lang/String;)Lbfk;
    .locals 1

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcvm;->b:Ljava/lang/Object;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lbfk;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object p1

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public final declared-synchronized h(Landroid/os/ParcelFileDescriptor;)Lctd;
    .locals 1

    monitor-enter p0

    :try_start_0
    new-instance v0, Lcsy;

    invoke-direct {v0, p1}, Lcsy;-><init>(Landroid/os/ParcelFileDescriptor;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public final declared-synchronized i(Lkqi;)Lctd;
    .locals 5

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcvm;->c:Ljava/lang/Object;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    sget-object v3, Ldyy;->a:Ldyy;

    check-cast v0, Lkpo;

    const/4 v4, 0x0

    invoke-virtual {v0, v1, v2, v3, v4}, Lkpo;->f(JLdyy;Ljava/lang/String;)Lgxr;

    move-result-object v0

    iget-object p1, p1, Lkqi;->j:Ljava/lang/String;

    invoke-virtual {v0, p1}, Lgxr;->a(Ljava/lang/String;)Lgxn;

    move-result-object p1

    new-instance v1, Lcsz;

    iget-object v2, p0, Lcvm;->d:Ljava/lang/Object;

    iget-object v3, p0, Lcvm;->b:Ljava/lang/Object;

    invoke-direct {v1, v0, p1, v2, v3}, Lcsz;-><init>(Lgxr;Lgxn;Ljava/util/concurrent/Executor;Lkbc;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v1

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method
