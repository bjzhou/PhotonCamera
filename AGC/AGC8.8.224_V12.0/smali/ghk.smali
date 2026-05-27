.class public final Lghk;
.super Ljava/lang/Object;

# interfaces
.implements Lghh;


# instance fields
.field public final a:Z


# direct methods
.method public constructor <init>(Ldhi;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    sget-object v0, Ldhq;->al:Ldhj;

    invoke-interface {p1, v0}, Ldhi;->l(Ldhj;)Z

    move-result p1

    iput-boolean p1, p0, Lghk;->a:Z

    return-void
.end method


# virtual methods
.method public final a(Lker;)Lghg;
    .locals 0

    new-instance p1, Lghj;

    invoke-direct {p1, p0}, Lghj;-><init>(Lghk;)V

    return-object p1
.end method

.method public final b()V
    .locals 0

    return-void
.end method
