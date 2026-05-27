.class Landroid/preference/LibraryPreference$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/preference/LibraryPreference$CallBack;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/preference/LibraryPreference;->show(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroid/preference/LibraryPreference;

.field final synthetic val$view:Landroid/view/View;


# direct methods
.method public constructor <init>(Landroid/preference/LibraryPreference;Landroid/view/View;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    iput-object p1, p0, Landroid/preference/LibraryPreference$1;->this$0:Landroid/preference/LibraryPreference;

    iput-object p2, p0, Landroid/preference/LibraryPreference$1;->val$view:Landroid/view/View;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onSubmit(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 3

    iget-object v0, p0, Landroid/preference/LibraryPreference$1;->this$0:Landroid/preference/LibraryPreference;

    const-string v1, "title"

    invoke-virtual {v0, v1, p1}, Landroid/preference/LibraryPreference;->persistString(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Landroid/preference/LibraryPreference$1;->this$0:Landroid/preference/LibraryPreference;

    const-string v1, "address"

    invoke-virtual {v0, v1, p2}, Landroid/preference/LibraryPreference;->persistString(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Landroid/preference/LibraryPreference$1;->this$0:Landroid/preference/LibraryPreference;

    const-string v1, "value"

    invoke-virtual {v0, v1, p3}, Landroid/preference/LibraryPreference;->persistString(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Landroid/preference/LibraryPreference$1;->this$0:Landroid/preference/LibraryPreference;

    invoke-virtual {p2}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v1, "0"

    goto :goto_0

    :cond_0
    const-string v1, "1"

    :goto_0
    const-string v2, "enabled"

    invoke-virtual {v0, v2, v1}, Landroid/preference/LibraryPreference;->persistString(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Landroid/preference/LibraryPreference$1;->val$view:Landroid/view/View;

    if-eqz v0, :cond_1

    const-string v1, "agc_library_switch"

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewWithTag(Ljava/lang/Object;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Switch;

    if-eqz v0, :cond_1

    invoke-virtual {p2}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    xor-int/lit8 v1, v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/Switch;->setChecked(Z)V

    :cond_1
    iget-object v0, p0, Landroid/preference/LibraryPreference$1;->this$0:Landroid/preference/LibraryPreference;

    invoke-virtual {v0, p1, p2, p3}, Landroid/preference/LibraryPreference;->setTitleSummary(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
