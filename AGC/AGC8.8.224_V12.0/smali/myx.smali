.class final Lmyx;
.super Lmwn;


# instance fields
.field private final transient a:Lmwa;

.field private final transient b:Lmvv;


# direct methods
.method public constructor <init>(Lmwa;Lmvv;)V
    .locals 0

    invoke-direct {p0}, Lmwn;-><init>()V

    iput-object p1, p0, Lmyx;->a:Lmwa;

    iput-object p2, p0, Lmyx;->b:Lmvv;

    return-void
.end method


# virtual methods
.method public final cA()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public final contains(Ljava/lang/Object;)Z
    .locals 1

    iget-object v0, p0, Lmyx;->a:Lmwa;

    invoke-virtual {v0, p1}, Lmwa;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public final cz()Lnac;
    .locals 1

    iget-object v0, p0, Lmyx;->b:Lmvv;

    invoke-virtual {v0}, Lmvv;->s()Lnad;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic iterator()Ljava/util/Iterator;
    .locals 1

    invoke-virtual {p0}, Lmyx;->cz()Lnac;

    move-result-object v0

    return-object v0
.end method

.method public final size()I
    .locals 1

    iget-object v0, p0, Lmyx;->a:Lmwa;

    invoke-virtual {v0}, Lmwa;->size()I

    move-result v0

    return v0
.end method

.method public final v()Lmvv;
    .locals 1

    iget-object v0, p0, Lmyx;->b:Lmvv;

    return-object v0
.end method

.method public final x([Ljava/lang/Object;I)I
    .locals 1

    iget-object v0, p0, Lmyx;->b:Lmvv;

    invoke-virtual {v0, p1, p2}, Lmvm;->x([Ljava/lang/Object;I)I

    move-result p1

    return p1
.end method
