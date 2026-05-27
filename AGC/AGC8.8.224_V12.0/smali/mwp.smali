.class final Lmwp;
.super Lmwc;


# instance fields
.field final synthetic a:Lmws;


# direct methods
.method public constructor <init>(Lmws;)V
    .locals 0

    iput-object p1, p0, Lmwp;->a:Lmws;

    invoke-direct {p0}, Lmwc;-><init>()V

    return-void
.end method


# virtual methods
.method public final C()Lmvv;
    .locals 1

    new-instance v0, Lmwo;

    invoke-direct {v0, p0}, Lmwo;-><init>(Lmwp;)V

    return-object v0
.end method

.method public final a()Lmwa;
    .locals 1

    iget-object v0, p0, Lmwp;->a:Lmws;

    return-object v0
.end method

.method public final cz()Lnac;
    .locals 1

    invoke-virtual {p0}, Lmvm;->v()Lmvv;

    move-result-object v0

    invoke-virtual {v0}, Lmvv;->s()Lnad;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic iterator()Ljava/util/Iterator;
    .locals 1

    invoke-virtual {p0}, Lmwp;->cz()Lnac;

    move-result-object v0

    return-object v0
.end method
