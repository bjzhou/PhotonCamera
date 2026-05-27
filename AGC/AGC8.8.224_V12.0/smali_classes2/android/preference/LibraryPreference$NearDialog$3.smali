.class Landroid/preference/LibraryPreference$NearDialog$3;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/preference/LibraryPreference$NearDialog;->show(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLandroid/preference/LibraryPreference$CallBack;Landroid/content/DialogInterface$OnClickListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic val$confirmListener:Landroid/preference/LibraryPreference$CallBack;

.field final synthetic val$editText:Landroid/widget/EditText;

.field final synthetic val$editText1:Landroid/widget/EditText;

.field final synthetic val$titleText:Landroid/widget/EditText;


# direct methods
.method public constructor <init>(Landroid/preference/LibraryPreference$CallBack;Landroid/widget/EditText;Landroid/widget/EditText;Landroid/widget/EditText;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    iput-object p1, p0, Landroid/preference/LibraryPreference$NearDialog$3;->val$confirmListener:Landroid/preference/LibraryPreference$CallBack;

    iput-object p2, p0, Landroid/preference/LibraryPreference$NearDialog$3;->val$titleText:Landroid/widget/EditText;

    iput-object p3, p0, Landroid/preference/LibraryPreference$NearDialog$3;->val$editText:Landroid/widget/EditText;

    iput-object p4, p0, Landroid/preference/LibraryPreference$NearDialog$3;->val$editText1:Landroid/widget/EditText;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2

    iget-object p1, p0, Landroid/preference/LibraryPreference$NearDialog$3;->val$confirmListener:Landroid/preference/LibraryPreference$CallBack;

    iget-object p2, p0, Landroid/preference/LibraryPreference$NearDialog$3;->val$titleText:Landroid/widget/EditText;

    invoke-virtual {p2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p2

    iget-object v0, p0, Landroid/preference/LibraryPreference$NearDialog$3;->val$editText:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Landroid/preference/LibraryPreference$NearDialog$3;->val$editText1:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {p1, p2, v0, v1}, Landroid/preference/LibraryPreference$CallBack;->onSubmit(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
