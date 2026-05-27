.class public final synthetic Llhp;
.super Ljava/lang/Object;

# interfaces
.implements Lnnn;


# instance fields
.field public final synthetic a:Llhq;

.field public final synthetic b:Loyb;


# direct methods
.method public synthetic constructor <init>(Llhq;Loyb;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Llhp;->a:Llhq;

    iput-object p2, p0, Llhp;->b:Loyb;

    return-void
.end method


# virtual methods
.method public final a()Lnou;
    .locals 3

    iget-object v0, p0, Llhp;->a:Llhq;

    iget-object v1, p0, Llhp;->b:Loyb;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Llhq;->Y(Loyb;Llfu;)Lnou;

    move-result-object v0

    return-object v0
.end method
