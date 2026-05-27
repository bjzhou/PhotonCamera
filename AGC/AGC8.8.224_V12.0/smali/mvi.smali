.class public final Lmvi;
.super Lmvw;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lmvw;-><init>()V

    return-void
.end method

.method public constructor <init>(I)V
    .locals 0

    invoke-direct {p0, p1}, Lmvw;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final a()Lmvk;
    .locals 3

    iget v0, p0, Lmvi;->b:I

    if-nez v0, :cond_0

    sget-object v0, Lmyt;->a:Lmyt;

    return-object v0

    :cond_0
    new-instance v1, Lmyt;

    iget-object v2, p0, Lmvi;->a:[Ljava/lang/Object;

    invoke-direct {v1, v2, v0}, Lmyt;-><init>([Ljava/lang/Object;I)V

    return-object v1
.end method

.method public final bridge synthetic b()Lmwa;
    .locals 1

    invoke-virtual {p0}, Lmvi;->a()Lmvk;

    move-result-object v0

    return-object v0
.end method

.method public final c(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 0

    invoke-super {p0, p1, p2}, Lmvw;->e(Ljava/lang/Object;Ljava/lang/Object;)V

    return-void
.end method
