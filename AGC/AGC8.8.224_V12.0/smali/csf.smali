.class public final synthetic Lcsf;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/content/DialogInterface$OnDismissListener;


# instance fields
.field public final synthetic a:Ljava/lang/Object;

.field private final synthetic b:I


# direct methods
.method public synthetic constructor <init>(Lcds;I)V
    .locals 0

    iput p2, p0, Lcsf;->b:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcsf;->a:Ljava/lang/Object;

    return-void
.end method

.method public synthetic constructor <init>(Lcsg;I)V
    .locals 0

    iput p2, p0, Lcsf;->b:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcsf;->a:Ljava/lang/Object;

    return-void
.end method

.method public synthetic constructor <init>(Lhoz;I)V
    .locals 0

    iput p2, p0, Lcsf;->b:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcsf;->a:Ljava/lang/Object;

    return-void
.end method

.method public synthetic constructor <init>(Lhrz;I)V
    .locals 0

    iput p2, p0, Lcsf;->b:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcsf;->a:Ljava/lang/Object;

    return-void
.end method

.method public synthetic constructor <init>(Lhsc;I)V
    .locals 0

    iput p2, p0, Lcsf;->b:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcsf;->a:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public final onDismiss(Landroid/content/DialogInterface;)V
    .locals 3

    iget v0, p0, Lcsf;->b:I

    const/4 v1, 0x0

    packed-switch v0, :pswitch_data_0

    iget-object p1, p0, Lcsf;->a:Ljava/lang/Object;

    check-cast p1, Lhsc;

    iput-object v1, p1, Lhsc;->h:Lhsb;

    return-void

    :pswitch_0
    iget-object p1, p0, Lcsf;->a:Ljava/lang/Object;

    check-cast p1, Lhrz;

    invoke-virtual {p1}, Lhrz;->h()V

    const/4 v0, 0x5

    invoke-virtual {p1, v0}, Lhrz;->j(I)V

    return-void

    :pswitch_1
    iget-object p1, p0, Lcsf;->a:Ljava/lang/Object;

    check-cast p1, Lhoz;

    iput-object v1, p1, Lhoz;->k:Leg;

    return-void

    :pswitch_2
    iget-object v0, p0, Lcsf;->a:Ljava/lang/Object;

    check-cast v0, Lcds;

    iget-object v2, v0, Lcds;->g:Leg;

    if-ne p1, v2, :cond_0

    iput-object v1, v0, Lcds;->g:Leg;

    :cond_0
    return-void

    :pswitch_3
    iget-object p1, p0, Lcsf;->a:Ljava/lang/Object;

    check-cast p1, Lcsg;

    iput-object v1, p1, Lcsg;->e:Leg;

    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
