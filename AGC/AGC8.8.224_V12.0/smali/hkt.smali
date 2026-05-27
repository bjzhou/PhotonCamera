.class public final Lhkt;
.super Ljava/lang/Object;


# instance fields
.field public final a:Lkqi;

.field public b:Lmqp;

.field public c:Lmqp;

.field public d:Lmqp;

.field public e:Z

.field public f:Lgcf;


# direct methods
.method public constructor <init>(Lkqi;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    sget-object v0, Lmpx;->a:Lmpx;

    iput-object v0, p0, Lhkt;->b:Lmqp;

    iput-object v0, p0, Lhkt;->c:Lmqp;

    iput-object v0, p0, Lhkt;->d:Lmqp;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lhkt;->e:Z

    sget-object v0, Lgcf;->c:Lgcf;

    iput-object v0, p0, Lhkt;->f:Lgcf;

    iput-object p1, p0, Lhkt;->a:Lkqi;

    return-void
.end method


# virtual methods
.method public final a(Lcom/google/android/libraries/camera/exif/ExifInterface;)V
    .locals 0

    invoke-static {p1}, Lmqp;->h(Ljava/lang/Object;)Lmqp;

    move-result-object p1

    iput-object p1, p0, Lhkt;->c:Lmqp;

    return-void
.end method

.method public final b(Lkab;)V
    .locals 0

    invoke-static {p1}, Lmqp;->h(Ljava/lang/Object;)Lmqp;

    move-result-object p1

    iput-object p1, p0, Lhkt;->b:Lmqp;

    return-void
.end method
