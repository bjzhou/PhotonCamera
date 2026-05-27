.class public final Lbak;
.super Lbai;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string v0, "NetworkMeteredCtrlr"

    invoke-static {v0}, Laxq;->b(Ljava/lang/String;)Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lbav;)V
    .locals 0

    invoke-direct {p0, p1}, Lbai;-><init>(Lbav;)V

    return-void
.end method


# virtual methods
.method public final b(Lbcj;)Z
    .locals 1

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object p1, p1, Lbcj;->i:Laxf;

    iget p1, p1, Laxf;->i:I

    const/4 v0, 0x5

    if-ne p1, v0, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public final bridge synthetic c(Ljava/lang/Object;)Z
    .locals 1

    check-cast p1, Lbaa;

    iget-boolean v0, p1, Lbaa;->a:Z

    if-eqz v0, :cond_1

    iget-boolean p1, p1, Lbaa;->c:Z

    if-nez p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    return p1

    :cond_1
    :goto_0
    const/4 p1, 0x1

    return p1
.end method
