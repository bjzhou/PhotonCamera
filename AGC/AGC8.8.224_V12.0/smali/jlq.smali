.class public final synthetic Ljlq;
.super Ljava/lang/Object;

# interfaces
.implements Ljle;


# static fields
.field public static final synthetic a:Ljlq;

.field public static final synthetic b:Ljlq;

.field public static final synthetic c:Ljlq;

.field public static final synthetic d:Ljlq;


# instance fields
.field private final synthetic e:I


# direct methods
.method static synthetic constructor <clinit>()V
    .locals 2

    new-instance v0, Ljlq;

    const/4 v1, 0x3

    invoke-direct {v0, v1}, Ljlq;-><init>(I)V

    sput-object v0, Ljlq;->d:Ljlq;

    new-instance v0, Ljlq;

    const/4 v1, 0x2

    invoke-direct {v0, v1}, Ljlq;-><init>(I)V

    sput-object v0, Ljlq;->c:Ljlq;

    new-instance v0, Ljlq;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljlq;-><init>(I)V

    sput-object v0, Ljlq;->b:Ljlq;

    new-instance v0, Ljlq;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljlq;-><init>(I)V

    sput-object v0, Ljlq;->a:Ljlq;

    return-void
.end method

.method private synthetic constructor <init>(I)V
    .locals 0

    iput p1, p0, Ljlq;->e:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Landroid/os/IBinder;)Landroid/os/IInterface;
    .locals 2

    iget v0, p0, Ljlq;->e:I

    packed-switch v0, :pswitch_data_0

    const-string v0, "com.google.android.gms.learning.internal.training.IInAppTrainingService"

    invoke-interface {p1, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    instance-of v1, v0, Ljlp;

    if-eqz v1, :cond_3

    check-cast v0, Ljlp;

    goto :goto_3

    :pswitch_0
    const-string v0, "com.google.android.gms.learning.internal.training.IInAppTrainer"

    invoke-interface {p1, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    instance-of v1, v0, Ljln;

    if-eqz v1, :cond_0

    check-cast v0, Ljln;

    goto :goto_0

    :cond_0
    new-instance v0, Ljln;

    invoke-direct {v0, p1}, Ljln;-><init>(Landroid/os/IBinder;)V

    :goto_0
    return-object v0

    :pswitch_1
    const-string v0, "com.google.android.gms.learning.internal.IInAppExampleStoreProxy"

    invoke-interface {p1, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    instance-of v1, v0, Ljla;

    if-eqz v1, :cond_1

    check-cast v0, Ljla;

    goto :goto_1

    :cond_1
    new-instance v0, Ljla;

    invoke-direct {v0, p1}, Ljla;-><init>(Landroid/os/IBinder;)V

    :goto_1
    return-object v0

    :pswitch_2
    const-string v0, "com.google.android.gms.learning.internal.training.IInAppJobService"

    invoke-interface {p1, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    instance-of v1, v0, Ljlm;

    if-eqz v1, :cond_2

    check-cast v0, Ljlm;

    goto :goto_2

    :cond_2
    new-instance v0, Ljll;

    invoke-direct {v0, p1}, Ljll;-><init>(Landroid/os/IBinder;)V

    :goto_2
    return-object v0

    :cond_3
    new-instance v0, Ljlo;

    invoke-direct {v0, p1}, Ljlo;-><init>(Landroid/os/IBinder;)V

    :goto_3
    return-object v0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
