.class Lcom/agc/pref/ConfigImport$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/agc/pref/ConfigImport;->handleIntent(Landroid/app/Activity;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic val$activity:Landroid/app/Activity;

.field final synthetic val$filePath:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/app/Activity;Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    iput-object p1, p0, Lcom/agc/pref/ConfigImport$1;->val$activity:Landroid/app/Activity;

    iput-object p2, p0, Lcom/agc/pref/ConfigImport$1;->val$filePath:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 0

    :try_start_0
    iget-object p1, p0, Lcom/agc/pref/ConfigImport$1;->val$activity:Landroid/app/Activity;

    iget-object p2, p0, Lcom/agc/pref/ConfigImport$1;->val$filePath:Ljava/lang/String;

    invoke-static {p1, p2}, Lcom/agc/pref/ConfigImport;->access$000(Landroid/content/Context;Ljava/lang/String;)V

    iget-object p1, p0, Lcom/agc/pref/ConfigImport$1;->val$activity:Landroid/app/Activity;

    iget-object p2, p0, Lcom/agc/pref/ConfigImport$1;->val$filePath:Ljava/lang/String;

    invoke-static {p1, p2}, Lcom/agc/pref/ConfigLoader;->importConfig(Landroid/content/Context;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    :goto_0
    return-void
.end method
