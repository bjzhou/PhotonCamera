.class public Lcom/agc/Debug;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final debugView:Lcom/agc/fw/FloatManager;

.field public static final focusView:Lcom/agc/fw/FloatManager;


# direct methods
.method public static constructor <clinit>()V
    .locals 4

    new-instance v0, Lcom/agc/fw/FloatManager;

    const-string v1, "pref_show_debug_button_key"

    const/4 v2, 0x0

    const/4 v3, 0x1

    invoke-direct {v0, v1, v2, v3}, Lcom/agc/fw/FloatManager;-><init>(Ljava/lang/String;IZ)V

    sput-object v0, Lcom/agc/Debug;->debugView:Lcom/agc/fw/FloatManager;

    new-instance v0, Lcom/agc/fw/FloatManager;

    const-string v1, "pref_show_debug_data_key"

    invoke-direct {v0, v1, v3, v2}, Lcom/agc/fw/FloatManager;-><init>(Ljava/lang/String;IZ)V

    sput-object v0, Lcom/agc/Debug;->focusView:Lcom/agc/fw/FloatManager;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static destoryDebugView(Landroid/content/Context;)V
    .locals 1

    :try_start_0
    sget-object v0, Lcom/agc/Debug;->focusView:Lcom/agc/fw/FloatManager;

    invoke-virtual {v0, p0}, Lcom/agc/fw/FloatManager;->onDestroy(Landroid/content/Context;)V

    sget-object v0, Lcom/agc/Debug;->debugView:Lcom/agc/fw/FloatManager;

    invoke-virtual {v0, p0}, Lcom/agc/fw/FloatManager;->onDestroy(Landroid/content/Context;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p0

    :goto_0
    return-void
.end method

.method public static showDebugView(Landroid/app/Activity;)V
    .locals 1

    :try_start_0
    sget-object v0, Lcom/agc/Debug;->focusView:Lcom/agc/fw/FloatManager;

    invoke-virtual {v0, p0}, Lcom/agc/fw/FloatManager;->showFloat(Landroid/app/Activity;)V

    sget-object v0, Lcom/agc/Debug;->debugView:Lcom/agc/fw/FloatManager;

    invoke-virtual {v0, p0}, Lcom/agc/fw/FloatManager;->showFloat(Landroid/app/Activity;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    :goto_0
    invoke-static {p0}, Lcom/agc/util/Permission;->requestPermission(Landroid/app/Activity;)Z

    return-void
.end method
