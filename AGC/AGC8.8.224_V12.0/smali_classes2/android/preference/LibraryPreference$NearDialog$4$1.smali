.class Landroid/preference/LibraryPreference$NearDialog$4$1;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/preference/LibraryPreference$NearDialog$4;->onFocusChange(Landroid/view/View;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Landroid/preference/LibraryPreference$NearDialog$4;


# direct methods
.method public constructor <init>(Landroid/preference/LibraryPreference$NearDialog$4;)V
    .locals 0

    iput-object p1, p0, Landroid/preference/LibraryPreference$NearDialog$4$1;->this$0:Landroid/preference/LibraryPreference$NearDialog$4;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    iget-object v0, p0, Landroid/preference/LibraryPreference$NearDialog$4$1;->this$0:Landroid/preference/LibraryPreference$NearDialog$4;

    iget-object v0, v0, Landroid/preference/LibraryPreference$NearDialog$4;->val$ctx:Landroid/content/Context;

    const-string v1, "input_method"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/InputMethodManager;

    iget-object v1, p0, Landroid/preference/LibraryPreference$NearDialog$4$1;->this$0:Landroid/preference/LibraryPreference$NearDialog$4;

    iget-object v1, v1, Landroid/preference/LibraryPreference$NearDialog$4;->val$titleText:Landroid/widget/EditText;

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/view/inputmethod/InputMethodManager;->showSoftInput(Landroid/view/View;I)Z

    return-void
.end method
