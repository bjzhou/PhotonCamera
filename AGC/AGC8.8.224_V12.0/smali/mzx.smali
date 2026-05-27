.class final Lmzx;
.super Lmyd;


# instance fields
.field final synthetic a:Lmzz;

.field final synthetic b:Lnab;


# direct methods
.method public constructor <init>(Lnab;Lmzz;)V
    .locals 0

    iput-object p1, p0, Lmzx;->b:Lnab;

    iput-object p2, p0, Lmzx;->a:Lmzz;

    invoke-direct {p0}, Lmyd;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()I
    .locals 2

    iget-object v0, p0, Lmzx;->a:Lmzz;

    iget v0, v0, Lmzz;->b:I

    if-nez v0, :cond_0

    iget-object v0, p0, Lmzx;->b:Lnab;

    invoke-virtual {p0}, Lmzx;->b()Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, v1}, Lnab;->cw(Ljava/lang/Object;)I

    move-result v0

    :cond_0
    return v0
.end method

.method public final b()Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lmzx;->a:Lmzz;

    iget-object v0, v0, Lmzz;->a:Ljava/lang/Object;

    return-object v0
.end method
