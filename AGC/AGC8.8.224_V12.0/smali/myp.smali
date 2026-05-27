.class final Lmyp;
.super Lmsx;


# instance fields
.field final a:Ljava/lang/Comparable;

.field final synthetic b:Lmys;


# direct methods
.method public constructor <init>(Lmys;Ljava/lang/Comparable;)V
    .locals 0

    iput-object p1, p0, Lmyp;->b:Lmys;

    invoke-direct {p0, p2}, Lmsx;-><init>(Ljava/lang/Object;)V

    invoke-virtual {p1}, Lmys;->S()Ljava/lang/Comparable;

    move-result-object p1

    iput-object p1, p0, Lmyp;->a:Ljava/lang/Comparable;

    return-void
.end method


# virtual methods
.method protected final bridge synthetic a(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lmyp;->a:Ljava/lang/Comparable;

    invoke-static {p1, v0}, Lmys;->T(Ljava/lang/Comparable;Ljava/lang/Comparable;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p1, 0x0

    return-object p1

    :cond_0
    iget-object v0, p0, Lmyp;->b:Lmys;

    iget-object v0, v0, Lmys;->a:Lmuh;

    invoke-virtual {v0, p1}, Lmuh;->d(Ljava/lang/Comparable;)Ljava/lang/Comparable;

    move-result-object p1

    return-object p1
.end method
