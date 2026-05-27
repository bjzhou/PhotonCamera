.class public final synthetic Ldtj;
.super Ljava/lang/Object;

# interfaces
.implements Ldss;


# instance fields
.field public final synthetic a:Ljava/lang/Object;

.field private final synthetic b:I


# direct methods
.method public synthetic constructor <init>(Ldtq;I)V
    .locals 0

    iput p2, p0, Ldtj;->b:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Ldtj;->a:Ljava/lang/Object;

    return-void
.end method

.method public synthetic constructor <init>(Ldtt;I)V
    .locals 0

    iput p2, p0, Ldtj;->b:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Ldtj;->a:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public final b(Lkeb;Lkfj;)V
    .locals 2

    iget v0, p0, Ldtj;->b:I

    packed-switch v0, :pswitch_data_0

    iget-object p2, p0, Ldtj;->a:Ljava/lang/Object;

    new-instance v0, Ldtn;

    invoke-direct {v0, p1, p2}, Ldtn;-><init>(Lkeb;Ldtt;)V

    invoke-interface {p1, v0}, Lkeb;->k(Lkfg;)V

    return-void

    :pswitch_0
    iget-object v0, p0, Ldtj;->a:Ljava/lang/Object;

    check-cast v0, Ldtq;

    iget-object v0, v0, Ldtq;->b:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ldss;

    invoke-interface {v1, p1, p2}, Ldss;->b(Lkeb;Lkfj;)V

    goto :goto_0

    :cond_0
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
