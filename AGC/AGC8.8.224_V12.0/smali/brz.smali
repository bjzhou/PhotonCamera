.class public final Lbrz;
.super Ljava/lang/Object;

# interfaces
.implements Lcaz;


# instance fields
.field final synthetic a:Ljava/lang/Object;

.field private final synthetic b:I


# direct methods
.method public constructor <init>(Ldfa;I[B[B[B[B)V
    .locals 0

    iput p2, p0, Lbrz;->b:I

    iput-object p1, p0, Lbrz;->a:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(Liks;I[B)V
    .locals 0

    iput p2, p0, Lbrz;->b:I

    iput-object p1, p0, Lbrz;->a:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic a()Ljava/lang/Object;
    .locals 12

    iget v0, p0, Lbrz;->b:I

    packed-switch v0, :pswitch_data_0

    new-instance v0, Lbrt;

    iget-object v1, p0, Lbrz;->a:Ljava/lang/Object;

    check-cast v1, Liks;

    iget-object v2, v1, Liks;->c:Ljava/lang/Object;

    iget-object v1, v1, Liks;->b:Ljava/lang/Object;

    check-cast v2, Lbsa;

    invoke-direct {v0, v2, v1}, Lbrt;-><init>(Lbsa;Laed;)V

    return-object v0

    :pswitch_0
    new-instance v0, Lbsf;

    iget-object v1, p0, Lbrz;->a:Ljava/lang/Object;

    check-cast v1, Ldfa;

    iget-object v2, v1, Ldfa;->c:Ljava/lang/Object;

    iget-object v3, v1, Ldfa;->f:Ljava/lang/Object;

    iget-object v4, v1, Ldfa;->d:Ljava/lang/Object;

    iget-object v5, v1, Ldfa;->b:Ljava/lang/Object;

    iget-object v6, v1, Ldfa;->a:Ljava/lang/Object;

    iget-object v7, v1, Ldfa;->e:Ljava/lang/Object;

    check-cast v6, Llij;

    check-cast v5, Llij;

    check-cast v4, Lbtx;

    check-cast v3, Lbtx;

    check-cast v2, Lbtx;

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    move-object v1, v0

    invoke-direct/range {v1 .. v11}, Lbsf;-><init>(Lbtx;Lbtx;Lbtx;Llij;Llij;Laed;[B[B[B[B)V

    return-object v0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
