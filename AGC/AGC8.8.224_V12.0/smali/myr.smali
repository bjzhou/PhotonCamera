.class final Lmyr;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/io/Serializable;


# instance fields
.field final a:Lmym;

.field final b:Lmuh;


# direct methods
.method public constructor <init>(Lmym;Lmuh;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lmyr;->a:Lmym;

    iput-object p2, p0, Lmyr;->b:Lmuh;

    return-void
.end method

.method private readResolve()Ljava/lang/Object;
    .locals 3

    new-instance v0, Lmys;

    iget-object v1, p0, Lmyr;->a:Lmym;

    iget-object v2, p0, Lmyr;->b:Lmuh;

    invoke-direct {v0, v1, v2}, Lmys;-><init>(Lmym;Lmuh;)V

    return-object v0
.end method
