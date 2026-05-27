.class public final Lhqj;
.super Ljava/lang/Object;

# interfaces
.implements Lgen;


# instance fields
.field final synthetic a:Ljava/lang/Object;

.field private final synthetic b:I


# direct methods
.method public constructor <init>(Ldaj;I)V
    .locals 0

    iput p2, p0, Lhqj;->b:I

    iput-object p1, p0, Lhqj;->a:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(Lhql;I)V
    .locals 0

    iput p2, p0, Lhqj;->b:I

    iput-object p1, p0, Lhqj;->a:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(Lhzo;I)V
    .locals 0

    iput p2, p0, Lhqj;->b:I

    iput-object p1, p0, Lhqj;->a:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic a()V
    .locals 1

    iget v0, p0, Lhqj;->b:I

    return-void
.end method

.method public final synthetic b()V
    .locals 1

    iget v0, p0, Lhqj;->b:I

    return-void
.end method

.method public final synthetic c()V
    .locals 1

    iget v0, p0, Lhqj;->b:I

    return-void
.end method

.method public final d()V
    .locals 1

    iget v0, p0, Lhqj;->b:I

    packed-switch v0, :pswitch_data_0

    iget-object v0, p0, Lhqj;->a:Ljava/lang/Object;

    check-cast v0, Lhzo;

    invoke-virtual {v0}, Lhzo;->d()V

    return-void

    :pswitch_0
    iget-object v0, p0, Lhqj;->a:Ljava/lang/Object;

    check-cast v0, Ldaj;

    iget-object v0, v0, Ldaj;->a:Ldau;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-interface {v0}, Ldau;->c()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lhqj;->a:Ljava/lang/Object;

    check-cast v0, Ldaj;

    iget-object v0, v0, Ldaj;->a:Ldau;

    invoke-interface {v0}, Ldau;->b()V

    :cond_0
    return-void

    :pswitch_1
    iget-object v0, p0, Lhqj;->a:Ljava/lang/Object;

    check-cast v0, Lhql;

    invoke-virtual {v0}, Lhql;->g()V

    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
