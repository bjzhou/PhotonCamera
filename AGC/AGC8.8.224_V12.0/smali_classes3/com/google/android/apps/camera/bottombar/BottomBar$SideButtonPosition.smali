.class public final enum Lcom/google/android/apps/camera/bottombar/BottomBar$SideButtonPosition;
.super Ljava/lang/Enum;


# static fields
.field private static final synthetic $VALUES:[Lcom/google/android/apps/camera/bottombar/BottomBar$SideButtonPosition;

.field public static final enum CENTER_LEFT:Lcom/google/android/apps/camera/bottombar/BottomBar$SideButtonPosition;

.field public static final enum CENTER_RIGHT:Lcom/google/android/apps/camera/bottombar/BottomBar$SideButtonPosition;

.field public static final enum LEFT:Lcom/google/android/apps/camera/bottombar/BottomBar$SideButtonPosition;

.field public static final enum RIGHT:Lcom/google/android/apps/camera/bottombar/BottomBar$SideButtonPosition;


# direct methods
.method private static synthetic $values()[Lcom/google/android/apps/camera/bottombar/BottomBar$SideButtonPosition;
    .locals 3

    const/4 v0, 0x4

    new-array v0, v0, [Lcom/google/android/apps/camera/bottombar/BottomBar$SideButtonPosition;

    const/4 v1, 0x0

    sget-object v2, Lcom/google/android/apps/camera/bottombar/BottomBar$SideButtonPosition;->LEFT:Lcom/google/android/apps/camera/bottombar/BottomBar$SideButtonPosition;

    aput-object v2, v0, v1

    const/4 v1, 0x1

    sget-object v2, Lcom/google/android/apps/camera/bottombar/BottomBar$SideButtonPosition;->CENTER_LEFT:Lcom/google/android/apps/camera/bottombar/BottomBar$SideButtonPosition;

    aput-object v2, v0, v1

    const/4 v1, 0x2

    sget-object v2, Lcom/google/android/apps/camera/bottombar/BottomBar$SideButtonPosition;->CENTER_RIGHT:Lcom/google/android/apps/camera/bottombar/BottomBar$SideButtonPosition;

    aput-object v2, v0, v1

    const/4 v1, 0x3

    sget-object v2, Lcom/google/android/apps/camera/bottombar/BottomBar$SideButtonPosition;->RIGHT:Lcom/google/android/apps/camera/bottombar/BottomBar$SideButtonPosition;

    aput-object v2, v0, v1

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 3

    new-instance v0, Lcom/google/android/apps/camera/bottombar/BottomBar$SideButtonPosition;

    const-string v1, "LEFT"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/google/android/apps/camera/bottombar/BottomBar$SideButtonPosition;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/android/apps/camera/bottombar/BottomBar$SideButtonPosition;->LEFT:Lcom/google/android/apps/camera/bottombar/BottomBar$SideButtonPosition;

    new-instance v0, Lcom/google/android/apps/camera/bottombar/BottomBar$SideButtonPosition;

    const-string v1, "CENTER_LEFT"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Lcom/google/android/apps/camera/bottombar/BottomBar$SideButtonPosition;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/android/apps/camera/bottombar/BottomBar$SideButtonPosition;->CENTER_LEFT:Lcom/google/android/apps/camera/bottombar/BottomBar$SideButtonPosition;

    new-instance v0, Lcom/google/android/apps/camera/bottombar/BottomBar$SideButtonPosition;

    const-string v1, "CENTER_RIGHT"

    const/4 v2, 0x2

    invoke-direct {v0, v1, v2}, Lcom/google/android/apps/camera/bottombar/BottomBar$SideButtonPosition;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/android/apps/camera/bottombar/BottomBar$SideButtonPosition;->CENTER_RIGHT:Lcom/google/android/apps/camera/bottombar/BottomBar$SideButtonPosition;

    new-instance v0, Lcom/google/android/apps/camera/bottombar/BottomBar$SideButtonPosition;

    const/4 v1, 0x0

    sget-object v1, Lcom/google/android/libraries/camera/gyro/hardwarebuffer/uGU/nUeywVXRpj;->hiclGR:Ljava/lang/String;

    const/4 v2, 0x3

    invoke-direct {v0, v1, v2}, Lcom/google/android/apps/camera/bottombar/BottomBar$SideButtonPosition;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/android/apps/camera/bottombar/BottomBar$SideButtonPosition;->RIGHT:Lcom/google/android/apps/camera/bottombar/BottomBar$SideButtonPosition;

    invoke-static {}, Lcom/google/android/apps/camera/bottombar/BottomBar$SideButtonPosition;->$values()[Lcom/google/android/apps/camera/bottombar/BottomBar$SideButtonPosition;

    move-result-object v0

    sput-object v0, Lcom/google/android/apps/camera/bottombar/BottomBar$SideButtonPosition;->$VALUES:[Lcom/google/android/apps/camera/bottombar/BottomBar$SideButtonPosition;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/google/android/apps/camera/bottombar/BottomBar$SideButtonPosition;
    .locals 1

    const-class v0, Lcom/google/android/apps/camera/bottombar/BottomBar$SideButtonPosition;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/google/android/apps/camera/bottombar/BottomBar$SideButtonPosition;

    return-object p0
.end method

.method public static values()[Lcom/google/android/apps/camera/bottombar/BottomBar$SideButtonPosition;
    .locals 1

    sget-object v0, Lcom/google/android/apps/camera/bottombar/BottomBar$SideButtonPosition;->$VALUES:[Lcom/google/android/apps/camera/bottombar/BottomBar$SideButtonPosition;

    invoke-virtual {v0}, [Lcom/google/android/apps/camera/bottombar/BottomBar$SideButtonPosition;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/google/android/apps/camera/bottombar/BottomBar$SideButtonPosition;

    return-object v0
.end method
