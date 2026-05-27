.class Lcom/agc/widget/cure/CureSettingDialog$3;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/agc/widget/cure/CureGridViewLayout$OnCureDoneListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/agc/widget/cure/CureSettingDialog;->initView(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/agc/widget/cure/CureSettingDialog;


# direct methods
.method public constructor <init>(Lcom/agc/widget/cure/CureSettingDialog;)V
    .locals 0

    iput-object p1, p0, Lcom/agc/widget/cure/CureSettingDialog$3;->this$0:Lcom/agc/widget/cure/CureSettingDialog;

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

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/agc/Log;->d(Ljava/lang/Object;)I

    iget-object v0, p1, Lcom/agc/widget/cure/CureGridViewLayout$CureValue;->key:Ljava/lang/String;

    iget-object p1, p1, Lcom/agc/widget/cure/CureGridViewLayout$CureValue;->value:Ljava/lang/String;

    invoke-static {v0, p1}, Lagc/Agc;->patch(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    return-void
.end method
