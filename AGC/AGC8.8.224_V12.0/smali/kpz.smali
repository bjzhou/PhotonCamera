.class public final Lkpz;
.super Ljava/lang/Object;


# instance fields
.field public a:Ljava/lang/String;

.field public b:Ljava/lang/String;

.field public c:Ljava/lang/String;

.field public d:Ljava/lang/String;

.field public e:Ljava/lang/String;

.field public f:Ljava/lang/String;

.field public g:I

.field public h:Z

.field public i:Z

.field public j:Lmwn;

.field public k:Ljava/text/DateFormat;

.field public l:Lmwa;

.field public m:Landroid/content/Context;

.field public n:Ljava/lang/String;

.field public o:Ljava/lang/String;

.field public p:Ljava/lang/String;

.field public q:Lkqo;

.field public r:Z

.field public s:J

.field public t:B


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(I)V
    .locals 0

    iput p1, p0, Lkpz;->g:I

    iget-byte p1, p0, Lkpz;->t:B

    or-int/lit8 p1, p1, 0x1

    int-to-byte p1, p1

    iput-byte p1, p0, Lkpz;->t:B

    return-void
.end method

.method public final b()V
    .locals 1

    const-string v0, "COVER"

    iput-object v0, p0, Lkpz;->f:Ljava/lang/String;

    return-void
.end method

.method public final c(Lmwn;)V
    .locals 1

    if-eqz p1, :cond_0

    iput-object p1, p0, Lkpz;->j:Lmwn;

    return-void

    :cond_0
    new-instance p1, Ljava/lang/NullPointerException;

    const-string v0, "Null filenameBurstSequenceExtensionsSortedLast"

    invoke-direct {p1, v0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public final d()V
    .locals 1

    const-string v0, "BURST-"

    iput-object v0, p0, Lkpz;->e:Ljava/lang/String;

    return-void
.end method

.method public final e(Z)V
    .locals 0

    iput-boolean p1, p0, Lkpz;->h:Z

    iget-byte p1, p0, Lkpz;->t:B

    or-int/lit8 p1, p1, 0x2

    int-to-byte p1, p1

    iput-byte p1, p0, Lkpz;->t:B

    return-void
.end method

.method public final f(Z)V
    .locals 0

    iput-boolean p1, p0, Lkpz;->i:Z

    iget-byte p1, p0, Lkpz;->t:B

    or-int/lit8 p1, p1, 0x4

    int-to-byte p1, p1

    iput-byte p1, p0, Lkpz;->t:B

    return-void
.end method

.method public final g()V
    .locals 2

    const-wide/16 v0, 0x4e20

    iput-wide v0, p0, Lkpz;->s:J

    iget-byte v0, p0, Lkpz;->t:B

    or-int/lit8 v0, v0, 0x20

    int-to-byte v0, v0

    iput-byte v0, p0, Lkpz;->t:B

    return-void
.end method

.method public final h()V
    .locals 1

    const-string v0, ""

    iput-object v0, p0, Lkpz;->n:Ljava/lang/String;

    return-void
.end method

.method public final i()V
    .locals 1

    const-string v0, "Camera"

    iput-object v0, p0, Lkpz;->p:Ljava/lang/String;

    return-void
.end method
