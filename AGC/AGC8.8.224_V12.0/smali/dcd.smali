.class public final Ldcd;
.super Ljava/lang/Object;

# interfaces
.implements Logk;


# instance fields
.field private final a:Loiw;

.field private final b:Loiw;

.field private final c:Loiw;


# direct methods
.method public constructor <init>(Loiw;Loiw;Loiw;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Ldcd;->a:Loiw;

    iput-object p2, p0, Ldcd;->b:Loiw;

    iput-object p3, p0, Ldcd;->c:Loiw;

    return-void
.end method


# virtual methods
.method public final a()Ldja;
    .locals 5

    iget-object v0, p0, Ldcd;->a:Loiw;

    invoke-interface {v0}, Loiw;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/SharedPreferences;

    iget-object v1, p0, Ldcd;->b:Loiw;

    invoke-interface {v1}, Loiw;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/apps/camera/camerafatalerror/CameraFatalErrorTrackerDatabase;

    iget-object v2, p0, Ldcd;->c:Loiw;

    check-cast v2, Ldbs;

    invoke-virtual {v2}, Ldbs;->a()Lcvr;

    move-result-object v2

    new-instance v3, Ldja;

    const/4 v4, 0x0

    invoke-direct {v3, v0, v1, v2, v4}, Ldja;-><init>(Landroid/content/SharedPreferences;Lcom/google/android/apps/camera/camerafatalerror/CameraFatalErrorTrackerDatabase;Lcvr;[B)V

    return-object v3
.end method

.method public final bridge synthetic get()Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0}, Ldcd;->a()Ldja;

    move-result-object v0

    return-object v0
.end method
