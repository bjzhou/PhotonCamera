.class public final Lban;
.super Lbai;


# direct methods
.method public constructor <init>(Lbav;)V
    .locals 0

    invoke-direct {p0, p1}, Lbai;-><init>(Lbav;)V

    return-void
.end method


# virtual methods
.method public final b(Lbcj;)Z
    .locals 0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object p1, p1, Lbcj;->i:Laxf;

    iget-boolean p1, p1, Laxf;->e:Z

    return p1
.end method

.method public final bridge synthetic c(Ljava/lang/Object;)Z
    .locals 0

    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    if-nez p1, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method
