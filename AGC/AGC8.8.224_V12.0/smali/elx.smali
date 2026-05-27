.class public interface abstract Lelx;
.super Ljava/lang/Object;


# static fields
.field public static final b:Llpu;

.field public static final c:Llpu;

.field public static final d:Llpu;

.field public static final e:Llpu;

.field public static final f:Llpu;

.field public static final g:Llpu;

.field public static final h:Llpu;

.field public static final i:Llpu;

.field public static final j:Llpu;

.field public static final k:Llpu;

.field public static final l:Llpu;

.field public static final m:Llpu;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    new-instance v0, Llpu;

    const-class v1, Landroid/media/AudioManager;

    const-string v2, "audio"

    const/4 v3, 0x2

    invoke-direct {v0, v1, v2, v3}, Llpu;-><init>(Ljava/lang/Class;Ljava/lang/String;I)V

    sput-object v0, Lelx;->b:Llpu;

    new-instance v0, Llpu;

    const-class v1, Landroid/view/accessibility/AccessibilityManager;

    const-string v2, "accessibility"

    const/4 v3, 0x3

    invoke-direct {v0, v1, v2, v3}, Llpu;-><init>(Ljava/lang/Class;Ljava/lang/String;I)V

    sput-object v0, Lelx;->c:Llpu;

    new-instance v0, Llpu;

    const-class v1, Landroid/hardware/camera2/CameraManager;

    const-string v2, "camera"

    const/4 v3, 0x4

    invoke-direct {v0, v1, v2, v3}, Llpu;-><init>(Ljava/lang/Class;Ljava/lang/String;I)V

    sput-object v0, Lelx;->d:Llpu;

    new-instance v0, Llpu;

    const-class v1, Landroid/app/admin/DevicePolicyManager;

    const-string v2, "device_policy"

    const/4 v3, 0x5

    invoke-direct {v0, v1, v2, v3}, Llpu;-><init>(Ljava/lang/Class;Ljava/lang/String;I)V

    sput-object v0, Lelx;->e:Llpu;

    new-instance v0, Llpu;

    const-class v1, Landroid/hardware/display/DisplayManager;

    const-string v2, "display"

    const/4 v3, 0x6

    invoke-direct {v0, v1, v2, v3}, Llpu;-><init>(Ljava/lang/Class;Ljava/lang/String;I)V

    sput-object v0, Lelx;->f:Llpu;

    new-instance v0, Llpu;

    const-class v1, Landroid/app/KeyguardManager;

    const-string v2, "keyguard"

    const/4 v3, 0x7

    invoke-direct {v0, v1, v2, v3}, Llpu;-><init>(Ljava/lang/Class;Ljava/lang/String;I)V

    sput-object v0, Lelx;->g:Llpu;

    new-instance v0, Llpu;

    const-class v1, Landroid/location/LocationManager;

    const-string v2, "location"

    const/16 v3, 0x8

    invoke-direct {v0, v1, v2, v3}, Llpu;-><init>(Ljava/lang/Class;Ljava/lang/String;I)V

    sput-object v0, Lelx;->h:Llpu;

    new-instance v0, Llpu;

    const-class v1, Landroid/app/NotificationManager;

    const-string v2, "notification"

    const/16 v3, 0x9

    invoke-direct {v0, v1, v2, v3}, Llpu;-><init>(Ljava/lang/Class;Ljava/lang/String;I)V

    sput-object v0, Lelx;->i:Llpu;

    new-instance v0, Llpu;

    const-class v1, Landroid/os/PowerManager;

    const-string v2, "power"

    const/16 v3, 0xa

    invoke-direct {v0, v1, v2, v3}, Llpu;-><init>(Ljava/lang/Class;Ljava/lang/String;I)V

    sput-object v0, Lelx;->j:Llpu;

    new-instance v0, Llpu;

    const-class v1, Landroid/hardware/SensorManager;

    const-string v2, "sensor"

    const/16 v3, 0xb

    invoke-direct {v0, v1, v2, v3}, Llpu;-><init>(Ljava/lang/Class;Ljava/lang/String;I)V

    sput-object v0, Lelx;->k:Llpu;

    new-instance v0, Llpu;

    const-class v1, Landroid/app/job/JobScheduler;

    const-string v2, "jobscheduler"

    const/16 v3, 0xf

    invoke-direct {v0, v1, v2, v3}, Llpu;-><init>(Ljava/lang/Class;Ljava/lang/String;I)V

    sput-object v0, Lelx;->l:Llpu;

    new-instance v0, Llpu;

    const-class v1, Landroid/os/UserManager;

    const-string v2, "user"

    const/16 v3, 0x10

    invoke-direct {v0, v1, v2, v3}, Llpu;-><init>(Ljava/lang/Class;Ljava/lang/String;I)V

    sput-object v0, Lelx;->m:Llpu;

    return-void
.end method


# virtual methods
.method public abstract a(Llpu;)Ljava/lang/Object;
.end method
