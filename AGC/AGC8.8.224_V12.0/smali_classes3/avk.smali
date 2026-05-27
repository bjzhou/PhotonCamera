.class public final synthetic Lavk;
.super Ljava/lang/Object;

# interfaces
.implements Laip;


# instance fields
.field public final synthetic a:Lavm;

.field public final synthetic b:Landroidx/wear/ambient/AmbientModeSupport$AmbientController;

.field private final synthetic c:I


# direct methods
.method public synthetic constructor <init>(Lavm;Landroidx/wear/ambient/AmbientModeSupport$AmbientController;I[B)V
    .locals 0

    iput p3, p0, Lavk;->c:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lavk;->a:Lavm;

    iput-object p2, p0, Lavk;->b:Landroidx/wear/ambient/AmbientModeSupport$AmbientController;

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 2

    iget v0, p0, Lavk;->c:I

    packed-switch v0, :pswitch_data_0

    iget-object v0, p0, Lavk;->a:Lavm;

    iget-object v1, p0, Lavk;->b:Landroidx/wear/ambient/AmbientModeSupport$AmbientController;

    invoke-virtual {v0}, Lavm;->d()V

    if-eqz v1, :cond_1

    iget-object v0, v1, Landroidx/wear/ambient/AmbientModeSupport$AmbientController;->a:Ljava/lang/Object;

    check-cast v0, Lavf;

    invoke-virtual {v0}, Lavf;->b()V

    return-void

    :pswitch_0
    iget-object v0, p0, Lavk;->a:Lavm;

    iget-object v1, p0, Lavk;->b:Landroidx/wear/ambient/AmbientModeSupport$AmbientController;

    invoke-virtual {v0}, Lavm;->d()V

    if-eqz v1, :cond_0

    iget-object v0, v1, Landroidx/wear/ambient/AmbientModeSupport$AmbientController;->a:Ljava/lang/Object;

    check-cast v0, Lavf;

    invoke-virtual {v0}, Lavf;->a()V

    :cond_0
    return-void

    :cond_1
    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
