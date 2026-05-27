.class public final Ljbp;
.super Ljde;

# interfaces
.implements Ljbg;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 8

    sget-object v2, Ljbf;->i:Ligo;

    sget-object v3, Ljcy;->r:Ljcx;

    new-instance v4, Ljfc;

    invoke-direct {v4}, Ljfc;-><init>()V

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object v0, p0

    move-object v1, p1

    invoke-direct/range {v0 .. v7}, Ljde;-><init>(Landroid/content/Context;Ligo;Ljcy;Ljfc;[B[B[B)V

    return-void
.end method


# virtual methods
.method public final a(Ljbd;)Ljdl;
    .locals 2

    new-instance v0, Ljbo;

    iget-object v1, p0, Ljde;->i:Ljdh;

    invoke-direct {v0, p0, p1, v1}, Ljbo;-><init>(Ljbp;Ljbd;Ljdh;)V

    const/4 p1, 0x2

    invoke-super {p0, p1, v0}, Ljde;->g(ILjec;)V

    return-object v0
.end method
