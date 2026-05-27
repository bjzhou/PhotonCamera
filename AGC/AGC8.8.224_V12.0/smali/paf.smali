.class public final Lpaf;
.super Ljava/lang/Object;


# instance fields
.field public final a:[B

.field public b:I

.field public c:I

.field public d:Z

.field public final e:Z

.field public f:Lpaf;

.field public g:Lpaf;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v0, 0x2000

    new-array v0, v0, [B

    iput-object v0, p0, Lpaf;->a:[B

    const/4 v0, 0x1

    iput-boolean v0, p0, Lpaf;->e:Z

    const/4 v0, 0x0

    iput-boolean v0, p0, Lpaf;->d:Z

    return-void
.end method

.method public constructor <init>([BIIZ)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lpaf;->a:[B

    iput p2, p0, Lpaf;->b:I

    iput p3, p0, Lpaf;->c:I

    iput-boolean p4, p0, Lpaf;->d:Z

    const/4 p1, 0x0

    iput-boolean p1, p0, Lpaf;->e:Z

    return-void
.end method


# virtual methods
.method public final a()Lpaf;
    .locals 4

    iget-object v0, p0, Lpaf;->f:Lpaf;

    const/4 v1, 0x0

    if-eq v0, p0, :cond_0

    move-object v2, v0

    goto :goto_0

    :cond_0
    move-object v2, v1

    :goto_0
    iget-object v3, p0, Lpaf;->g:Lpaf;

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iput-object v0, v3, Lpaf;->f:Lpaf;

    iget-object v0, p0, Lpaf;->f:Lpaf;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iput-object v3, v0, Lpaf;->g:Lpaf;

    iput-object v1, p0, Lpaf;->f:Lpaf;

    iput-object v1, p0, Lpaf;->g:Lpaf;

    return-object v2
.end method

.method public final b()Lpaf;
    .locals 5

    const/4 v0, 0x1

    iput-boolean v0, p0, Lpaf;->d:Z

    new-instance v1, Lpaf;

    iget-object v2, p0, Lpaf;->a:[B

    iget v3, p0, Lpaf;->b:I

    iget v4, p0, Lpaf;->c:I

    invoke-direct {v1, v2, v3, v4, v0}, Lpaf;-><init>([BIIZ)V

    return-object v1
.end method

.method public final c(Lpaf;I)V
    .locals 5

    iget-boolean v0, p1, Lpaf;->e:Z

    if-eqz v0, :cond_3

    iget v0, p1, Lpaf;->c:I

    add-int v1, v0, p2

    const/16 v2, 0x2000

    if-le v1, v2, :cond_2

    iget-boolean v3, p1, Lpaf;->d:Z

    if-nez v3, :cond_1

    iget v3, p1, Lpaf;->b:I

    sub-int/2addr v1, v3

    if-gt v1, v2, :cond_0

    iget-object v1, p1, Lpaf;->a:[B

    invoke-static {v1, v1, v3, v0}, Lljr;->aE([B[BII)V

    iget v0, p1, Lpaf;->c:I

    iget v1, p1, Lpaf;->b:I

    sub-int/2addr v0, v1

    iput v0, p1, Lpaf;->c:I

    const/4 v1, 0x0

    iput v1, p1, Lpaf;->b:I

    goto :goto_0

    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    invoke-direct {p1}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw p1

    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    invoke-direct {p1}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw p1

    :cond_2
    :goto_0
    iget-object v1, p0, Lpaf;->a:[B

    iget-object v2, p1, Lpaf;->a:[B

    iget v3, p0, Lpaf;->b:I

    add-int v4, v3, p2

    invoke-static {v1, v2, v0, v3, v4}, Lljr;->aB([B[BIII)V

    iget v0, p1, Lpaf;->c:I

    add-int/2addr v0, p2

    iput v0, p1, Lpaf;->c:I

    iget p1, p0, Lpaf;->b:I

    add-int/2addr p1, p2

    iput p1, p0, Lpaf;->b:I

    return-void

    :cond_3
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "only owner can write"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public final d(Lpaf;)V
    .locals 1

    iput-object p0, p1, Lpaf;->g:Lpaf;

    iget-object v0, p0, Lpaf;->f:Lpaf;

    iput-object v0, p1, Lpaf;->f:Lpaf;

    iget-object v0, p0, Lpaf;->f:Lpaf;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iput-object p1, v0, Lpaf;->g:Lpaf;

    iput-object p1, p0, Lpaf;->f:Lpaf;

    return-void
.end method
