.class public final Levh;
.super Ljava/lang/Object;

# interfaces
.implements Lhsk;


# instance fields
.field final synthetic a:Lchk;

.field private final synthetic b:I


# direct methods
.method public constructor <init>(Leuc;I)V
    .locals 0

    iput p2, p0, Levh;->b:I

    iput-object p1, p0, Levh;->a:Lchk;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(Levk;I)V
    .locals 0

    iput p2, p0, Levh;->b:I

    iput-object p1, p0, Levh;->a:Lchk;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 1

    iget v0, p0, Levh;->b:I

    packed-switch v0, :pswitch_data_0

    iget-object v0, p0, Levh;->a:Lchk;

    check-cast v0, Leuc;

    iget-object v0, v0, Leuc;->u:Ldpl;

    invoke-virtual {v0}, Ldpl;->c()V

    return-void

    :pswitch_0
    iget-object v0, p0, Levh;->a:Lchk;

    check-cast v0, Levk;

    iget-object v0, v0, Levk;->q:Ldpl;

    invoke-virtual {v0}, Ldpl;->c()V

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public final synthetic b()V
    .locals 1

    iget v0, p0, Levh;->b:I

    return-void
.end method

.method public final synthetic c()Z
    .locals 2

    iget v0, p0, Levh;->b:I

    const/4 v1, 0x0

    return v1
.end method
