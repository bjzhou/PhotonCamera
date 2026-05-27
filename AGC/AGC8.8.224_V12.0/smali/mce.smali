.class public final Lmce;
.super Lolh;


# annotations
.annotation runtime Lolj;
    b = "com.google.android.libraries.vision.visionkit.f250.internal.uploader.work.upload.OneAttachmentUploaderKt"
    c = "OneAttachmentUploader.kt"
    d = "logOnError"
    e = {
        0xe0,
        0xe3
    }
.end annotation


# instance fields
.field public a:Ljava/lang/Object;

.field public synthetic b:Ljava/lang/Object;

.field public c:I

.field public d:Lodt;

.field public e:Ljava/util/List;

.field public f:Llzz;

.field public g:Ljava/util/List;


# direct methods
.method public constructor <init>(Loku;)V
    .locals 0

    invoke-direct {p0, p1}, Lolh;-><init>(Loku;)V

    return-void
.end method


# virtual methods
.method public final b(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    iput-object p1, p0, Lmce;->b:Ljava/lang/Object;

    iget p1, p0, Lmce;->c:I

    const/high16 v0, -0x80000000

    or-int/2addr p1, v0

    iput p1, p0, Lmce;->c:I

    const/4 p1, 0x0

    invoke-static {p1, p1, p1, p0}, Llyh;->c(Llzz;Lmbi;Lomk;Loku;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method
