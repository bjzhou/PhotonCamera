.class public Lcom/agc/fw/FloatWindow;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/agc/fw/FloatWindow$With;,
        Lcom/agc/fw/FloatWindow$FloatView;,
        Lcom/agc/fw/FloatWindow$WindowTouchListener;
    }
.end annotation


# static fields
.field private static final MINIMUM_OFFSET:I = 0x5

.field private static startX:I = 0x0

.field private static startY:I = 0xfa


# instance fields
.field private alpha:F

.field private autoAlign:Z

.field private contentView:Landroid/view/View;

.field private downX:F

.field private downY:F

.field private floatView:Lcom/agc/fw/FloatWindow$FloatView;

.field private height:I

.field private isAddView:Z

.field private isDesktopWindow:Z

.field private isShowing:Z

.field private mContext:Landroid/content/Context;

.field private mDisplayMetrics:Landroid/util/DisplayMetrics;

.field private mFloatListener:Lcom/agc/fw/FloatListener;

.field private mLayoutParams:Landroid/view/WindowManager$LayoutParams;

.field private mWindowManager:Landroid/view/WindowManager;

.field private modality:Z

.field private moveAble:Z

.field private rowX:F

.field private rowY:F

.field private width:I


# direct methods
.method public static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method private constructor <init>(Lcom/agc/fw/FloatWindow$With;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {p1}, Lcom/agc/fw/FloatWindow$With;->access$000(Lcom/agc/fw/FloatWindow$With;)Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/agc/fw/FloatWindow;->mContext:Landroid/content/Context;

    invoke-static {p1}, Lcom/agc/fw/FloatWindow$With;->access$100(Lcom/agc/fw/FloatWindow$With;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/agc/fw/FloatWindow;->autoAlign:Z

    invoke-static {p1}, Lcom/agc/fw/FloatWindow$With;->access$200(Lcom/agc/fw/FloatWindow$With;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/agc/fw/FloatWindow;->modality:Z

    invoke-static {p1}, Lcom/agc/fw/FloatWindow$With;->access$300(Lcom/agc/fw/FloatWindow$With;)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/agc/fw/FloatWindow;->contentView:Landroid/view/View;

    invoke-static {p1}, Lcom/agc/fw/FloatWindow$With;->access$400(Lcom/agc/fw/FloatWindow$With;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/agc/fw/FloatWindow;->moveAble:Z

    invoke-static {p1}, Lcom/agc/fw/FloatWindow$With;->access$500(Lcom/agc/fw/FloatWindow$With;)F

    move-result v0

    iput v0, p0, Lcom/agc/fw/FloatWindow;->alpha:F

    invoke-static {p1}, Lcom/agc/fw/FloatWindow$With;->access$600(Lcom/agc/fw/FloatWindow$With;)I

    move-result v0

    iput v0, p0, Lcom/agc/fw/FloatWindow;->height:I

    invoke-static {p1}, Lcom/agc/fw/FloatWindow$With;->access$700(Lcom/agc/fw/FloatWindow$With;)I

    move-result v0

    iput v0, p0, Lcom/agc/fw/FloatWindow;->width:I

    invoke-static {p1}, Lcom/agc/fw/FloatWindow$With;->access$800(Lcom/agc/fw/FloatWindow$With;)Z

    move-result p1

    iput-boolean p1, p0, Lcom/agc/fw/FloatWindow;->isDesktopWindow:Z

    invoke-direct {p0}, Lcom/agc/fw/FloatWindow;->initWindowManager()V

    invoke-direct {p0}, Lcom/agc/fw/FloatWindow;->initLayoutParams()V

    invoke-direct {p0}, Lcom/agc/fw/FloatWindow;->initFloatView()V

    return-void
.end method

.method public synthetic constructor <init>(Lcom/agc/fw/FloatWindow$With;Lcom/agc/fw/FloatWindow$1;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/agc/fw/FloatWindow;-><init>(Lcom/agc/fw/FloatWindow$With;)V

    return-void
.end method

.method public static synthetic access$1000(Lcom/agc/fw/FloatWindow;)F
    .locals 0

    iget p0, p0, Lcom/agc/fw/FloatWindow;->downX:F

    return p0
.end method

.method public static synthetic access$1002(Lcom/agc/fw/FloatWindow;F)F
    .locals 0

    iput p1, p0, Lcom/agc/fw/FloatWindow;->downX:F

    return p1
.end method

.method public static synthetic access$1100(Lcom/agc/fw/FloatWindow;)F
    .locals 0

    iget p0, p0, Lcom/agc/fw/FloatWindow;->downY:F

    return p0
.end method

.method public static synthetic access$1102(Lcom/agc/fw/FloatWindow;F)F
    .locals 0

    iput p1, p0, Lcom/agc/fw/FloatWindow;->downY:F

    return p1
.end method

.method public static synthetic access$1200(Lcom/agc/fw/FloatWindow;)F
    .locals 0

    iget p0, p0, Lcom/agc/fw/FloatWindow;->rowX:F

    return p0
.end method

.method public static synthetic access$1202(Lcom/agc/fw/FloatWindow;F)F
    .locals 0

    iput p1, p0, Lcom/agc/fw/FloatWindow;->rowX:F

    return p1
.end method

.method public static synthetic access$1300(Lcom/agc/fw/FloatWindow;)F
    .locals 0

    iget p0, p0, Lcom/agc/fw/FloatWindow;->rowY:F

    return p0
.end method

.method public static synthetic access$1302(Lcom/agc/fw/FloatWindow;F)F
    .locals 0

    iput p1, p0, Lcom/agc/fw/FloatWindow;->rowY:F

    return p1
.end method

.method public static synthetic access$1400(Lcom/agc/fw/FloatWindow;)I
    .locals 0

    invoke-direct {p0}, Lcom/agc/fw/FloatWindow;->getStatusBarHeight()I

    move-result p0

    return p0
.end method

.method public static synthetic access$1500(Lcom/agc/fw/FloatWindow;)Lcom/agc/fw/FloatListener;
    .locals 0

    iget-object p0, p0, Lcom/agc/fw/FloatWindow;->mFloatListener:Lcom/agc/fw/FloatListener;

    return-object p0
.end method

.method public static synthetic access$1600(Lcom/agc/fw/FloatWindow;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/agc/fw/FloatWindow;->autoAlign:Z

    return p0
.end method

.method public static synthetic access$1702(I)I
    .locals 0

    sput p0, Lcom/agc/fw/FloatWindow;->startX:I

    return p0
.end method

.method public static synthetic access$1802(I)I
    .locals 0

    sput p0, Lcom/agc/fw/FloatWindow;->startY:I

    return p0
.end method

.method public static synthetic access$1900(Lcom/agc/fw/FloatWindow;)Landroid/view/WindowManager$LayoutParams;
    .locals 0

    iget-object p0, p0, Lcom/agc/fw/FloatWindow;->mLayoutParams:Landroid/view/WindowManager$LayoutParams;

    return-object p0
.end method

.method public static synthetic access$2000(Lcom/agc/fw/FloatWindow;)Lcom/agc/fw/FloatWindow$FloatView;
    .locals 0

    iget-object p0, p0, Lcom/agc/fw/FloatWindow;->floatView:Lcom/agc/fw/FloatWindow$FloatView;

    return-object p0
.end method

.method public static synthetic access$2100(Lcom/agc/fw/FloatWindow;)Landroid/view/WindowManager;
    .locals 0

    iget-object p0, p0, Lcom/agc/fw/FloatWindow;->mWindowManager:Landroid/view/WindowManager;

    return-object p0
.end method

.method public static synthetic access$2200(Lcom/agc/fw/FloatWindow;)Landroid/util/DisplayMetrics;
    .locals 0

    iget-object p0, p0, Lcom/agc/fw/FloatWindow;->mDisplayMetrics:Landroid/util/DisplayMetrics;

    return-object p0
.end method

.method public static synthetic access$900(Lcom/agc/fw/FloatWindow;)Landroid/view/View;
    .locals 0

    iget-object p0, p0, Lcom/agc/fw/FloatWindow;->contentView:Landroid/view/View;

    return-object p0
.end method

.method public static checkFloatPermission(Landroid/content/Context;)Z
    .locals 10

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/4 v1, 0x1

    const/16 v2, 0x13

    if-ge v0, v2, :cond_0

    return v1

    :cond_0
    const/16 v2, 0x17

    const/4 v3, 0x0

    if-ge v0, v2, :cond_3

    :try_start_0
    const-string v0, "android.content.Context"

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    const-string v2, "APP_OPS_SERVICE"

    invoke-virtual {v0, v2}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/reflect/AccessibleObject;->setAccessible(Z)V

    invoke-virtual {v2, v0}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    instance-of v4, v2, Ljava/lang/String;

    if-nez v4, :cond_1

    return v3

    :cond_1
    check-cast v2, Ljava/lang/String;

    const-string v4, "getSystemService"

    new-array v5, v1, [Ljava/lang/Class;

    const-class v6, Ljava/lang/String;

    aput-object v6, v5, v3

    invoke-virtual {v0, v4, v5}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    new-array v4, v1, [Ljava/lang/Object;

    aput-object v2, v4, v3

    invoke-virtual {v0, p0, v4}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    const-string v2, "android.app.AppOpsManager"

    invoke-static {v2}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v2

    const-string v4, "MODE_ALLOWED"

    invoke-virtual {v2, v4}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/reflect/AccessibleObject;->setAccessible(Z)V

    const-string v5, "checkOp"

    const/4 v6, 0x3

    new-array v7, v6, [Ljava/lang/Class;

    sget-object v8, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v8, v7, v3

    aput-object v8, v7, v1

    const-class v8, Ljava/lang/String;

    const/4 v9, 0x2

    aput-object v8, v7, v9

    invoke-virtual {v2, v5, v7}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v5

    new-array v6, v6, [Ljava/lang/Object;

    const/16 v7, 0x18

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v6, v3

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v7

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v6, v1

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object p0

    aput-object p0, v6, v9

    invoke-virtual {v5, v0, v6}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Integer;

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    invoke-virtual {v4, v2}, Ljava/lang/reflect/Field;->getInt(Ljava/lang/Object;)I

    move-result v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    if-ne p0, v0, :cond_2

    goto :goto_0

    :cond_2
    move v1, v3

    :goto_0
    return v1

    :catch_0
    move-exception p0

    return v3

    :cond_3
    const/16 v2, 0x1a

    if-lt v0, v2, :cond_7

    const-string v0, "appops"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/AppOpsManager;

    if-nez v0, :cond_4

    return v3

    :cond_4
    invoke-static {}, Landroid/os/Process;->myUid()I

    move-result v2

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object p0

    const-string v4, "android:system_alert_window"

    invoke-virtual {v0, v4, v2, p0}, Landroid/app/AppOpsManager;->checkOpNoThrow(Ljava/lang/String;ILjava/lang/String;)I

    move-result p0

    if-eqz p0, :cond_6

    if-ne p0, v1, :cond_5

    goto :goto_1

    :cond_5
    move v1, v3

    :cond_6
    :goto_1
    return v1

    :cond_7
    invoke-static {p0}, Landroid/provider/Settings;->canDrawOverlays(Landroid/content/Context;)Z

    move-result p0

    return p0
.end method

.method private getStatusBarHeight()I
    .locals 4

    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v0

    const-string v1, "status_bar_height"

    const-string v2, "dimen"

    const-string v3, "android"

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    if-lez v0, :cond_0

    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method private initFloatView()V
    .locals 2

    new-instance v0, Lcom/agc/fw/FloatWindow$FloatView;

    iget-object v1, p0, Lcom/agc/fw/FloatWindow;->mContext:Landroid/content/Context;

    invoke-direct {v0, p0, v1}, Lcom/agc/fw/FloatWindow$FloatView;-><init>(Lcom/agc/fw/FloatWindow;Landroid/content/Context;)V

    iput-object v0, p0, Lcom/agc/fw/FloatWindow;->floatView:Lcom/agc/fw/FloatWindow$FloatView;

    iget-boolean v1, p0, Lcom/agc/fw/FloatWindow;->moveAble:Z

    if-eqz v1, :cond_0

    new-instance v1, Lcom/agc/fw/FloatWindow$WindowTouchListener;

    invoke-direct {v1, p0}, Lcom/agc/fw/FloatWindow$WindowTouchListener;-><init>(Lcom/agc/fw/FloatWindow;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    :cond_0
    return-void
.end method

.method private initLayoutParams()V
    .locals 4

    new-instance v0, Landroid/view/WindowManager$LayoutParams;

    invoke-direct {v0}, Landroid/view/WindowManager$LayoutParams;-><init>()V

    iput-object v0, p0, Lcom/agc/fw/FloatWindow;->mLayoutParams:Landroid/view/WindowManager$LayoutParams;

    const v1, 0x40028

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    iget-boolean v1, p0, Lcom/agc/fw/FloatWindow;->modality:Z

    if-eqz v1, :cond_0

    const/high16 v1, 0x40000

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    :cond_0
    const/4 v1, -0x2

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->height:I

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->width:I

    iget v2, p0, Lcom/agc/fw/FloatWindow;->height:I

    const/4 v3, -0x1

    if-eq v2, v1, :cond_1

    iput v3, v0, Landroid/view/WindowManager$LayoutParams;->height:I

    :cond_1
    iget v2, p0, Lcom/agc/fw/FloatWindow;->width:I

    if-eq v2, v1, :cond_2

    iput v3, v0, Landroid/view/WindowManager$LayoutParams;->width:I

    :cond_2
    const v1, 0x800033

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->gravity:I

    const/4 v1, 0x1

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->format:I

    iget-boolean v1, p0, Lcom/agc/fw/FloatWindow;->isDesktopWindow:Z

    if-eqz v1, :cond_4

    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x1a

    if-lt v1, v2, :cond_3

    const/16 v1, 0x7f6

    goto :goto_0

    :cond_3
    const/16 v1, 0x7d3

    goto :goto_0

    :cond_4
    const/16 v1, 0x3e8

    :goto_0
    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->type:I

    const/4 v1, 0x0

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->dimAmount:F

    iget v1, p0, Lcom/agc/fw/FloatWindow;->alpha:F

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->alpha:F

    sget v1, Lcom/agc/fw/FloatWindow;->startX:I

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->x:I

    sget v1, Lcom/agc/fw/FloatWindow;->startY:I

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->y:I

    return-void
.end method

.method private initWindowManager()V
    .locals 2

    iget-object v0, p0, Lcom/agc/fw/FloatWindow;->mContext:Landroid/content/Context;

    const-string v1, "window"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/WindowManager;

    iput-object v0, p0, Lcom/agc/fw/FloatWindow;->mWindowManager:Landroid/view/WindowManager;

    new-instance v0, Landroid/util/DisplayMetrics;

    invoke-direct {v0}, Landroid/util/DisplayMetrics;-><init>()V

    iput-object v0, p0, Lcom/agc/fw/FloatWindow;->mDisplayMetrics:Landroid/util/DisplayMetrics;

    iget-object v0, p0, Lcom/agc/fw/FloatWindow;->mWindowManager:Landroid/view/WindowManager;

    invoke-interface {v0}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v0

    iget-object v1, p0, Lcom/agc/fw/FloatWindow;->mDisplayMetrics:Landroid/util/DisplayMetrics;

    invoke-virtual {v0, v1}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    return-void
.end method

.method public static isAppOpsOn(Landroid/content/Context;)Z
    .locals 8

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x17

    if-lt v0, v1, :cond_0

    invoke-static {p0}, Landroid/provider/Settings;->canDrawOverlays(Landroid/content/Context;)Z

    move-result p0

    return p0

    :cond_0
    const/4 v0, 0x0

    :try_start_0
    const-string v1, "appops"

    invoke-virtual {p0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    if-nez v1, :cond_1

    return v0

    :cond_1
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    const/4 v3, 0x3

    new-array v4, v3, [Ljava/lang/Class;

    sget-object v5, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v5, v4, v0

    const/4 v6, 0x1

    aput-object v5, v4, v6

    const-class v5, Ljava/lang/String;

    const/4 v7, 0x2

    aput-object v5, v4, v7

    const-string v5, "checkOp"

    invoke-virtual {v2, v5, v4}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v2

    if-nez v2, :cond_2

    return v0

    :cond_2
    new-array v3, v3, [Ljava/lang/Object;

    const/16 v4, 0x18

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v0

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v6

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object p0

    aput-object p0, v3, v7

    invoke-virtual {v2, v1, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Integer;

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    if-nez p0, :cond_3

    move v0, v6

    :cond_3
    return v0

    :catch_0
    move-exception p0

    invoke-virtual {p0}, Ljava/lang/Throwable;->getStackTrace()[Ljava/lang/StackTraceElement;

    return v0
.end method

.method public static openAppSettings(Landroid/content/Context;)Z
    .locals 4

    :try_start_0
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.settings.APPLICATION_DETAILS_SETTINGS"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v1, "package"

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    invoke-static {v1, v2, v3}, Landroid/net/Uri;->fromParts(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    invoke-virtual {p0, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const/4 p0, 0x1

    return p0

    :catch_0
    move-exception p0

    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    const/4 p0, 0x0

    return p0
.end method

.method public static openOpsSettings(Landroid/content/Context;)Z
    .locals 4

    :try_start_0
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x17

    if-lt v0, v1, :cond_0

    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.settings.action.MANAGE_OVERLAY_PERMISSION"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "package:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    invoke-virtual {p0, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    const/4 p0, 0x1

    return p0

    :cond_0
    invoke-static {p0}, Lcom/agc/fw/FloatWindow;->openAppSettings(Landroid/content/Context;)Z

    move-result p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return p0

    :catch_0
    move-exception p0

    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    const/4 p0, 0x0

    return p0
.end method


# virtual methods
.method public getContentView()Landroid/view/View;
    .locals 1

    iget-object v0, p0, Lcom/agc/fw/FloatWindow;->contentView:Landroid/view/View;

    return-object v0
.end method

.method public hidden()V
    .locals 2

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/agc/fw/FloatWindow;->isShowing:Z

    iget-object v0, p0, Lcom/agc/fw/FloatWindow;->floatView:Lcom/agc/fw/FloatWindow$FloatView;

    if-eqz v0, :cond_0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    :cond_0
    return-void
.end method

.method public isAddView()Z
    .locals 1

    iget-boolean v0, p0, Lcom/agc/fw/FloatWindow;->isAddView:Z

    return v0
.end method

.method public isShowing()Z
    .locals 1

    iget-object v0, p0, Lcom/agc/fw/FloatWindow;->floatView:Lcom/agc/fw/FloatWindow$FloatView;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/agc/fw/FloatWindow;->isShowing:Z

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public remove()V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "remove="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/agc/fw/FloatWindow;->isShowing()Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "AGC"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Lcom/agc/fw/FloatWindow;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/agc/fw/FloatWindow;->floatView:Lcom/agc/fw/FloatWindow$FloatView;

    iget-object v1, p0, Lcom/agc/fw/FloatWindow;->contentView:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    iget-object v0, p0, Lcom/agc/fw/FloatWindow;->mWindowManager:Landroid/view/WindowManager;

    iget-object v1, p0, Lcom/agc/fw/FloatWindow;->floatView:Lcom/agc/fw/FloatWindow$FloatView;

    invoke-interface {v0, v1}, Landroid/view/ViewManager;->removeView(Landroid/view/View;)V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/agc/fw/FloatWindow;->isShowing:Z

    iput-boolean v0, p0, Lcom/agc/fw/FloatWindow;->isAddView:Z

    :cond_0
    return-void
.end method

.method public setFloatListener(Lcom/agc/fw/FloatListener;)V
    .locals 0

    iput-object p1, p0, Lcom/agc/fw/FloatWindow;->mFloatListener:Lcom/agc/fw/FloatListener;

    return-void
.end method

.method public show()V
    .locals 4

    invoke-virtual {p0}, Lcom/agc/fw/FloatWindow;->isShowing()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/agc/fw/FloatWindow;->floatView:Lcom/agc/fw/FloatWindow$FloatView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    iget-boolean v0, p0, Lcom/agc/fw/FloatWindow;->isAddView:Z

    const/4 v1, 0x1

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/agc/fw/FloatWindow;->mWindowManager:Landroid/view/WindowManager;

    iget-object v2, p0, Lcom/agc/fw/FloatWindow;->floatView:Lcom/agc/fw/FloatWindow$FloatView;

    iget-object v3, p0, Lcom/agc/fw/FloatWindow;->mLayoutParams:Landroid/view/WindowManager$LayoutParams;

    invoke-interface {v0, v2, v3}, Landroid/view/ViewManager;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    iput-boolean v1, p0, Lcom/agc/fw/FloatWindow;->isAddView:Z

    :cond_0
    iput-boolean v1, p0, Lcom/agc/fw/FloatWindow;->isShowing:Z

    :cond_1
    return-void
.end method
