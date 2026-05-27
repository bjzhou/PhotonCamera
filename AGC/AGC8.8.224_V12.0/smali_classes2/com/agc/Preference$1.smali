.class Lcom/agc/Preference$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/agc/Preference;->updateDelay(Landroid/preference/PreferenceGroup;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic val$group:Landroid/preference/PreferenceGroup;


# direct methods
.method public constructor <init>(Landroid/preference/PreferenceGroup;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    iput-object p1, p0, Lcom/agc/Preference$1;->val$group:Landroid/preference/PreferenceGroup;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    iget-object v0, p0, Lcom/agc/Preference$1;->val$group:Landroid/preference/PreferenceGroup;

    invoke-static {v0}, Lcom/agc/Preference;->update(Landroid/preference/PreferenceGroup;)V

    return-void
.end method
