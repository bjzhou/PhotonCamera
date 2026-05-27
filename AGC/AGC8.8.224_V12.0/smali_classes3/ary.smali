.class public final Lary;
.super Ljava/lang/Object;

# interfaces
.implements Ladj;


# instance fields
.field final synthetic a:Ljava/lang/Object;

.field private final synthetic b:I


# direct methods
.method public constructor <init>(Lasf;I)V
    .locals 0

    iput p2, p0, Lary;->b:I

    iput-object p1, p0, Lary;->a:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(Ldl;I)V
    .locals 0

    iput p2, p0, Lary;->b:I

    iput-object p1, p0, Lary;->a:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 1

    iget v0, p0, Lary;->b:I

    packed-switch v0, :pswitch_data_0

    iget-object v0, p0, Lary;->a:Ljava/lang/Object;

    check-cast v0, Ldl;

    invoke-virtual {v0}, Ldl;->d()V

    return-void

    :pswitch_0
    iget-object v0, p0, Lary;->a:Ljava/lang/Object;

    check-cast v0, Lasf;

    invoke-virtual {v0}, Lasf;->l()V

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
