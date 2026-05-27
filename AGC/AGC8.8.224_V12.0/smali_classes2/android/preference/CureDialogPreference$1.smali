.class Landroid/preference/CureDialogPreference$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


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

    iput-object p1, p0, Landroid/preference/CureDialogPreference$1;->this$0:Landroid/preference/CureDialogPreference;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 0

    iget-object p1, p0, Landroid/preference/CureDialogPreference$1;->this$0:Landroid/preference/CureDialogPreference;

    invoke-virtual {p1}, Landroid/preference/DialogPreference;->getDialog()Landroid/app/Dialog;

    move-result-object p1

    invoke-virtual {p1}, Landroid/app/Dialog;->dismiss()V

    return-void
.end method
