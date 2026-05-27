.class public final Lbft;
.super Lbfq;


# instance fields
.field public b:I

.field public c:Ljava/lang/String;

.field public d:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lbfq;-><init>()V

    const/16 v0, 0x800

    iput v0, p0, Lbft;->b:I

    const-string v0, "\n"

    iput-object v0, p0, Lbft;->c:Ljava/lang/String;

    const-string v0, "  "

    iput-object v0, p0, Lbft;->d:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(I)V
    .locals 0

    invoke-direct {p0, p1}, Lbfq;-><init>(I)V

    const/16 p1, 0x800

    iput p1, p0, Lbft;->b:I

    const-string p1, "\n"

    iput-object p1, p0, Lbft;->c:Ljava/lang/String;

    const-string p1, "  "

    iput-object p1, p0, Lbft;->d:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method protected final a()I
    .locals 1

    const/16 v0, 0x1370

    return v0
.end method

.method public final b()Ljava/lang/String;
    .locals 1

    invoke-virtual {p0}, Lbft;->c()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "UTF-16BE"

    return-object v0

    :cond_0
    invoke-virtual {p0}, Lbft;->d()Z

    move-result v0

    if-eqz v0, :cond_1

    const-string v0, "UTF-16LE"

    return-object v0

    :cond_1
    const-string v0, "UTF-8"

    return-object v0
.end method

.method public final c()Z
    .locals 2

    iget v0, p0, Lbfq;->a:I

    and-int/lit8 v0, v0, 0x3

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public final clone()Ljava/lang/Object;
    .locals 2

    :try_start_0
    new-instance v0, Lbft;

    iget v1, p0, Lbfq;->a:I

    invoke-direct {v0, v1}, Lbft;-><init>(I)V

    iget-object v1, p0, Lbft;->d:Ljava/lang/String;

    iput-object v1, v0, Lbft;->d:Ljava/lang/String;

    iget-object v1, p0, Lbft;->c:Ljava/lang/String;

    iput-object v1, v0, Lbft;->c:Ljava/lang/String;

    iget v1, p0, Lbft;->b:I

    iput v1, v0, Lbft;->b:I
    :try_end_0
    .catch Lbeq; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    const/4 v0, 0x0

    return-object v0
.end method

.method public final d()Z
    .locals 2

    iget v0, p0, Lbfq;->a:I

    const/4 v1, 0x3

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public final i()Z
    .locals 1

    const/16 v0, 0x200

    invoke-virtual {p0, v0}, Lbfq;->h(I)Z

    move-result v0

    return v0
.end method

.method public final j()Z
    .locals 1

    const/16 v0, 0x100

    invoke-virtual {p0, v0}, Lbfq;->h(I)Z

    move-result v0

    return v0
.end method

.method public final k()Z
    .locals 1

    const/16 v0, 0x10

    invoke-virtual {p0, v0}, Lbfq;->h(I)Z

    move-result v0

    return v0
.end method

.method public final l()Z
    .locals 1

    const/16 v0, 0x20

    invoke-virtual {p0, v0}, Lbfq;->h(I)Z

    move-result v0

    return v0
.end method
