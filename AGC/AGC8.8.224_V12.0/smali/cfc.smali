.class public final Lcfc;
.super Lkfg;


# instance fields
.field private final a:Lnou;


# direct methods
.method public constructor <init>(Lnou;)V
    .locals 0

    invoke-direct {p0}, Lkfg;-><init>()V

    iput-object p1, p0, Lcfc;->a:Lnou;

    return-void
.end method


# virtual methods
.method public final bC(Lkou;)V
    .locals 1

    iget-object v0, p0, Lcfc;->a:Lnou;

    invoke-static {v0}, Ljvd;->r(Lnou;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lceh;

    if-eqz v0, :cond_0

    invoke-interface {v0, p1}, Lceh;->h(Lkou;)V

    :cond_0
    return-void
.end method
