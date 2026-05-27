.class public Lcom/agc/pref/PatchSwitch$PatchSwitchListener;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Landroid/preference/Preference$OnPreferenceChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/agc/pref/PatchSwitch;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "PatchSwitchListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/agc/pref/PatchSwitch;


# direct methods
.method public constructor <init>(Lcom/agc/pref/PatchSwitch;)V
    .locals 0

    iput-object p1, p0, Lcom/agc/pref/PatchSwitch$PatchSwitchListener;->this$0:Lcom/agc/pref/PatchSwitch;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private togglePatchEnable()V
    .locals 3

    const-string v0, "lib_patch_enabled_key"

    invoke-static {v0}, Lcom/Utils/Pref;->MenuValue(Ljava/lang/String;)I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    const/4 v2, 0x0

    :cond_0
    invoke-static {v0, v2}, Lcom/Utils/Pref;->setMenuValue(Ljava/lang/String;I)V

    invoke-static {}, Lcom/Globals;->onRestart()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 0

    invoke-direct {p0}, Lcom/agc/pref/PatchSwitch$PatchSwitchListener;->togglePatchEnable()V

    return-void
.end method

.method public onPreferenceChange(Landroid/preference/Preference;Ljava/lang/Object;)Z
    .locals 0

    invoke-direct {p0}, Lcom/agc/pref/PatchSwitch$PatchSwitchListener;->togglePatchEnable()V

    const/4 p1, 0x0

    return p1
.end method
