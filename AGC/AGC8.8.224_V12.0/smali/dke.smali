.class public final synthetic Ldke;
.super Ljava/lang/Object;

# interfaces
.implements Ldkk;


# instance fields
.field private final synthetic a:I


# direct methods
.method public synthetic constructor <init>(I)V
    .locals 0

    iput p1, p0, Ldke;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()Ljava/lang/Object;
    .locals 2

    iget v0, p0, Ldke;->a:I

    packed-switch v0, :pswitch_data_0

    const-class v0, Lcom/google/android/apps/camera/stats/timing/CameraActivityTiming;

    sget-object v1, Lcdm;->l:Lcdm;

    invoke-static {v0, v1}, Lcom/google/android/apps/camera/debug/contentprovider/DebugContentProvider;->a(Ljava/lang/Class;Ljava/util/function/Predicate;)Ljava/util/List;

    move-result-object v0

    return-object v0

    :pswitch_0
    const-class v0, Lhke;

    sget-object v1, Lcdm;->k:Lcdm;

    invoke-static {v0, v1}, Lcom/google/android/apps/camera/debug/contentprovider/DebugContentProvider;->a(Ljava/lang/Class;Ljava/util/function/Predicate;)Ljava/util/List;

    move-result-object v0

    return-object v0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
