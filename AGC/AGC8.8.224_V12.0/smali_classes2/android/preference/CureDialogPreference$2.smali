.class Landroid/preference/CureDialogPreference$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/agc/widget/cure/CureGridViewLayout$OnCureDoneListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/preference/CureDialogPreference;->onPrepareDialogBuilder(Landroid/app/AlertDialog$Builder;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroid/preference/CureDialogPreference;


# direct methods
.method public constructor <init>(Landroid/preference/CureDialogPreference;)V
    .locals 0

    iput-object p1, p0, Landroid/preference/CureDialogPreference$2;->this$0:Landroid/preference/CureDialogPreference;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDone(Lcom/agc/widget/cure/CureGridViewLayout$CureValue;)V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "cureValue:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/agc/Log;->d(Ljava/lang/Object;)I

    iget-object p1, p0, Landroid/preference/CureDialogPreference$2;->this$0:Landroid/preference/CureDialogPreference;

    invoke-virtual {p1}, Landroid/preference/DialogPreference;->getDialog()Landroid/app/Dialog;

    move-result-object p1

    invoke-virtual {p1}, Landroid/app/Dialog;->dismiss()V

    iget-object p1, p0, Landroid/preference/CureDialogPreference$2;->this$0:Landroid/preference/CureDialogPreference;

    invoke-static {p1}, Landroid/preference/CureDialogPreference;->access$000(Landroid/preference/CureDialogPreference;)V

    return-void
.end method
