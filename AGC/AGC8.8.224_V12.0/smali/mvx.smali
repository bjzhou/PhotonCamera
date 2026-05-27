.class final Lmvx;
.super Lmwc;


# instance fields
.field final synthetic a:Lmvy;


# direct methods
.method public constructor <init>(Lmvy;)V
    .locals 0

    iput-object p1, p0, Lmvx;->a:Lmvy;

    invoke-direct {p0}, Lmwc;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()Lmwa;
    .locals 1

    iget-object v0, p0, Lmvx;->a:Lmvy;

    return-object v0
.end method

.method public final cz()Lnac;
    .locals 1

    iget-object v0, p0, Lmvx;->a:Lmvy;

    invoke-virtual {v0}, Lmvy;->a()Lnac;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic iterator()Ljava/util/Iterator;
    .locals 1

    invoke-virtual {p0}, Lmvx;->cz()Lnac;

    move-result-object v0

    return-object v0
.end method
