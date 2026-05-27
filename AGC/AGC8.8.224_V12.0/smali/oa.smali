.class public final Loa;
.super Landroid/app/Activity;


# annotations
.annotation runtime Ljava/lang/Deprecated;
.end annotation


# instance fields
.field private a:Landroid/content/ComponentName;

.field private b:I

.field private c:[I


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    return-void
.end method

.method private final a()V
    .locals 5

    iget-object v0, p0, Loa;->a:Landroid/content/ComponentName;

    iget v1, p0, Loa;->b:I

    iget-object v2, p0, Loa;->c:[I

    new-instance v3, Landroid/content/Intent;

    const-string v4, "com.google.android.clockwork.home.complications.ACTION_CHOOSE_PROVIDER"

    invoke-direct {v3, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v4, "android.support.wearable.complications.EXTRA_WATCH_FACE_COMPONENT_NAME"

    invoke-virtual {v3, v4, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    const-string v0, "android.support.wearable.complications.EXTRA_COMPLICATION_ID"

    invoke-virtual {v3, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string v0, "android.support.wearable.complications.EXTRA_SUPPORTED_TYPES"

    invoke-virtual {v3, v0, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[I)Landroid/content/Intent;

    const/4 v0, 0x1

    invoke-virtual {p0, v3, v0}, Loa;->startActivityForResult(Landroid/content/Intent;I)V

    return-void
.end method

.method private final b()Z
    .locals 1

    const-string v0, "com.google.android.wearable.permission.RECEIVE_COMPLICATION_DATA_PRIVILEGED"

    invoke-static {p0, v0}, Laat;->b(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    if-eqz v0, :cond_1

    const-string v0, "com.google.android.wearable.permission.RECEIVE_COMPLICATION_DATA"

    invoke-static {p0, v0}, Laat;->b(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    return v0

    :cond_1
    :goto_0
    const/4 v0, 0x1

    return v0
.end method


# virtual methods
.method protected final onActivityResult(IILandroid/content/Intent;)V
    .locals 1

    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    invoke-virtual {p0, p2, p3}, Loa;->setResult(ILandroid/content/Intent;)V

    invoke-virtual {p0}, Loa;->finish()V

    :cond_0
    return-void
.end method

.method protected final onCreate(Landroid/os/Bundle;)V
    .locals 5

    const v0, 0x1030010

    invoke-virtual {p0, v0}, Loa;->setTheme(I)V

    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    invoke-virtual {p0}, Loa;->getIntent()Landroid/content/Intent;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v1

    const/4 v2, 0x1

    const/4 v3, 0x0

    sparse-switch v1, :sswitch_data_0

    :cond_0
    goto :goto_0

    :sswitch_0
    const-string v1, "android.support.wearable.complications.ACTION_START_PROVIDER_CHOOSER"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    goto :goto_1

    :sswitch_1
    const-string v1, "android.support.wearable.complications.ACTION_PERMISSION_REQUEST_ONLY"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_1

    :goto_0
    const/4 v0, -0x1

    :goto_1
    const-string v1, "com.google.android.wearable.permission.RECEIVE_COMPLICATION_DATA"

    const-string v4, "android.support.wearable.complications.EXTRA_WATCH_FACE_COMPONENT_NAME"

    packed-switch v0, :pswitch_data_0

    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "Unrecognised intent action."

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :pswitch_0
    invoke-virtual {p1, v4}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object p1

    check-cast p1, Landroid/content/ComponentName;

    iput-object p1, p0, Loa;->a:Landroid/content/ComponentName;

    invoke-direct {p0}, Loa;->b()Z

    move-result p1

    if-eqz p1, :cond_1

    invoke-virtual {p0}, Loa;->finish()V

    return-void

    :cond_1
    new-array p1, v2, [Ljava/lang/String;

    aput-object v1, p1, v3

    const/4 v0, 0x2

    invoke-static {p0, p1, v0}, Laat;->a(Landroid/app/Activity;[Ljava/lang/String;I)V

    return-void

    :pswitch_1
    invoke-virtual {p1, v4}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/content/ComponentName;

    iput-object v0, p0, Loa;->a:Landroid/content/ComponentName;

    const-string v0, "android.support.wearable.complications.EXTRA_COMPLICATION_ID"

    invoke-virtual {p1, v0, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Loa;->b:I

    const-string v0, "android.support.wearable.complications.EXTRA_SUPPORTED_TYPES"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getIntArrayExtra(Ljava/lang/String;)[I

    move-result-object p1

    iput-object p1, p0, Loa;->c:[I

    invoke-direct {p0}, Loa;->b()Z

    move-result p1

    if-eqz p1, :cond_2

    invoke-direct {p0}, Loa;->a()V

    return-void

    :cond_2
    new-array p1, v2, [Ljava/lang/String;

    aput-object v1, p1, v3

    invoke-static {p0, p1, v2}, Laat;->a(Landroid/app/Activity;[Ljava/lang/String;I)V

    return-void

    :sswitch_data_0
    .sparse-switch
        -0x73d4bad -> :sswitch_1
        0x545559e3 -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public final onRequestPermissionsResult(I[Ljava/lang/String;[I)V
    .locals 1

    array-length p2, p3

    if-nez p2, :cond_0

    return-void

    :cond_0
    const/4 p2, 0x0

    aget p3, p3, p2

    if-nez p3, :cond_2

    const/4 p3, 0x1

    if-ne p1, p3, :cond_1

    invoke-direct {p0}, Loa;->a()V

    goto :goto_0

    :cond_1
    invoke-virtual {p0}, Loa;->finish()V

    :goto_0
    iget-object p1, p0, Loa;->a:Landroid/content/ComponentName;

    new-instance p3, Landroid/content/Intent;

    const-string v0, "android.support.wearable.complications.ACTION_REQUEST_UPDATE_ALL_ACTIVE"

    invoke-direct {p3, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v0, "com.google.android.wearable.app"

    invoke-virtual {p3, v0}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    const-string v0, "android.support.wearable.complications.EXTRA_WATCH_FACE_COMPONENT"

    invoke-virtual {p3, v0, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    new-instance p1, Landroid/content/Intent;

    const-string v0, ""

    invoke-direct {p1, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const/high16 v0, 0x4000000

    invoke-static {p0, p2, p1, v0}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object p1

    const-string p2, "android.support.wearable.complications.EXTRA_PENDING_INTENT"

    invoke-virtual {p3, p2, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    invoke-virtual {p0, p3}, Loa;->sendBroadcast(Landroid/content/Intent;)V

    return-void

    :cond_2
    invoke-virtual {p0}, Loa;->finish()V

    return-void
.end method
