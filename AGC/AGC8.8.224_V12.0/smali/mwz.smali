.class abstract Lmwz;
.super Lmwn;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lmwn;-><init>()V

    return-void
.end method


# virtual methods
.method public final C()Lmvv;
    .locals 1

    new-instance v0, Lmwy;

    invoke-direct {v0, p0}, Lmwy;-><init>(Lmwz;)V

    return-object v0
.end method

.method public abstract a(I)Ljava/lang/Object;
.end method

.method public cz()Lnac;
    .locals 1

    const/4 v0, 0x0

    throw v0
.end method

.method public bridge synthetic iterator()Ljava/util/Iterator;
    .locals 1

    invoke-virtual {p0}, Lmwz;->cz()Lnac;

    move-result-object v0

    return-object v0
.end method

.method public final x([Ljava/lang/Object;I)I
    .locals 1

    invoke-virtual {p0}, Lmvm;->v()Lmvv;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lmvm;->x([Ljava/lang/Object;I)I

    move-result p1

    return p1
.end method
