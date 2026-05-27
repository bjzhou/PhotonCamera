.class Lcom/agc/pref/LibraryLoader$1;
.super Ljava/lang/Object;
.source "LibraryLoader.java"

# interfaces
.implements Lcom/gcam/simple/filechooser/ChooserDialog$Result;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/agc/pref/LibraryLoader;->onPreferenceClick(Landroid/preference/Preference;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/agc/pref/LibraryLoader;


# direct methods
.method constructor <init>(Lcom/agc/pref/LibraryLoader;)V
    .locals 0

    iput-object p1, p0, Lcom/agc/pref/LibraryLoader$1;->this$0:Lcom/agc/pref/LibraryLoader;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onChoosePath(Ljava/lang/String;Ljava/io/File;)V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "choose file:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/agc/Log;->d(Ljava/lang/Object;)I

    :try_start_0
    iget-object v0, p0, Lcom/agc/pref/LibraryLoader$1;->this$0:Lcom/agc/pref/LibraryLoader;

    invoke-static {v0, p1}, Lcom/agc/pref/LibraryLoader;->access$000(Lcom/agc/pref/LibraryLoader;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/agc/pref/LibraryLoader$1;->this$0:Lcom/agc/pref/LibraryLoader;

    invoke-static {v0}, Lcom/agc/pref/LibraryLoader;->access$100(Lcom/agc/pref/LibraryLoader;)Landroid/preference/Preference;

    move-result-object v0

    invoke-virtual {v0}, Landroid/preference/Preference;->getParent()Landroid/preference/PreferenceGroup;

    move-result-object v0

    invoke-static {v0}, Lcom/agc/Preference;->update(Landroid/preference/PreferenceGroup;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    :goto_0
    return-void
.end method

.method public onChoosePathList(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/io/File;",
            ">;)V"
        }
    .end annotation

    return-void
.end method
