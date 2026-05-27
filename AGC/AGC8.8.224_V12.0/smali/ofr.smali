.class public final synthetic Lofr;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Ljava/lang/Object;

.field public final synthetic c:Ljava/lang/Object;

.field private final synthetic d:I


# direct methods
.method public constructor <init>(Lcom/google/android/material/bottomsheet/BottomSheetBehavior;Landroid/view/View;II)V
    .locals 0

    iput p4, p0, Lofr;->d:I

    iput-object p1, p0, Lofr;->b:Ljava/lang/Object;

    iput-object p2, p0, Lofr;->c:Ljava/lang/Object;

    iput p3, p0, Lofr;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lcom/google/vr/vrcore/controller/api/ControllerServiceBridge;ILofp;I)V
    .locals 0

    iput p4, p0, Lofr;->d:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lofr;->b:Ljava/lang/Object;

    iput p2, p0, Lofr;->a:I

    iput-object p3, p0, Lofr;->c:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    iget v0, p0, Lofr;->d:I

    packed-switch v0, :pswitch_data_0

    iget-object v0, p0, Lofr;->b:Ljava/lang/Object;

    iget v1, p0, Lofr;->a:I

    iget-object v2, p0, Lofr;->c:Ljava/lang/Object;

    check-cast v2, Lofp;

    check-cast v0, Lcom/google/vr/vrcore/controller/api/ControllerServiceBridge;

    invoke-virtual {v0, v1, v2}, Lcom/google/vr/vrcore/controller/api/ControllerServiceBridge;->c(ILofp;)V

    return-void

    :pswitch_0
    iget-object v0, p0, Lofr;->b:Ljava/lang/Object;

    iget-object v1, p0, Lofr;->c:Ljava/lang/Object;

    iget v2, p0, Lofr;->a:I

    check-cast v1, Landroid/view/View;

    check-cast v0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3}, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->E(Landroid/view/View;IZ)V

    return-void

    :pswitch_1
    iget-object v0, p0, Lofr;->b:Ljava/lang/Object;

    iget v1, p0, Lofr;->a:I

    iget-object v2, p0, Lofr;->c:Ljava/lang/Object;

    check-cast v2, Lofp;

    check-cast v0, Lcom/google/vr/vrcore/controller/api/ControllerServiceBridge;

    invoke-virtual {v0, v1, v2}, Lcom/google/vr/vrcore/controller/api/ControllerServiceBridge;->c(ILofp;)V

    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
