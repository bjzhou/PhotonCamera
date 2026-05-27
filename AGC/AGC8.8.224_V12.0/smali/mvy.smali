.class abstract Lmvy;
.super Lmwa;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lmwa;-><init>()V

    return-void
.end method


# virtual methods
.method public abstract a()Lnac;
.end method

.method public final cB()Lmwn;
    .locals 1

    new-instance v0, Lmvx;

    invoke-direct {v0, p0}, Lmvx;-><init>(Lmvy;)V

    return-object v0
.end method

.method public final cC()Lmwn;
    .locals 1

    new-instance v0, Lmwe;

    invoke-direct {v0, p0}, Lmwe;-><init>(Lmwa;)V

    return-object v0
.end method

.method public final d()Lmvm;
    .locals 1

    new-instance v0, Lmwi;

    invoke-direct {v0, p0}, Lmwi;-><init>(Lmwa;)V

    return-object v0
.end method
