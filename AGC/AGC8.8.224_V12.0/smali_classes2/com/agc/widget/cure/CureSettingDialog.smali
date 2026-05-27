.class public Lcom/agc/widget/cure/CureSettingDialog;
.super Landroid/app/Dialog;
.source "SourceFile"


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    sget v0, Lcom/agc/Res$style;->dialog_style:I

    invoke-direct {p0, p1, v0}, Landroid/app/Dialog;-><init>(Landroid/content/Context;I)V

    invoke-direct {p0, p1}, Lcom/agc/widget/cure/CureSettingDialog;->initView(Landroid/content/Context;)V

    return-void
.end method

.method private initView(Landroid/content/Context;)V
    .locals 2

    new-instance v0, Lcom/agc/widget/cure/CureGridViewLayout;

    invoke-direct {v0, p1}, Lcom/agc/widget/cure/CureGridViewLayout;-><init>(Landroid/content/Context;)V

    new-instance v1, Lcom/agc/widget/cure/CureSettingDialog$1;

    invoke-direct {v1, p0}, Lcom/agc/widget/cure/CureSettingDialog$1;-><init>(Lcom/agc/widget/cure/CureSettingDialog;)V

    invoke-virtual {v0, v1}, Lcom/agc/widget/cure/CureGridViewLayout;->setOnCloseClickListener(Landroid/view/View$OnClickListener;)V

    new-instance v1, Lcom/agc/widget/cure/CureSettingDialog$2;

    invoke-direct {v1, p0}, Lcom/agc/widget/cure/CureSettingDialog$2;-><init>(Lcom/agc/widget/cure/CureSettingDialog;)V

    invoke-virtual {v0, v1}, Lcom/agc/widget/cure/CureGridViewLayout;->setOnDoneClickListener(Lcom/agc/widget/cure/CureGridViewLayout$OnCureDoneListener;)V

    new-instance v1, Lcom/agc/widget/cure/CureSettingDialog$3;

    invoke-direct {v1, p0}, Lcom/agc/widget/cure/CureSettingDialog$3;-><init>(Lcom/agc/widget/cure/CureSettingDialog;)V

    invoke-virtual {v0, v1}, Lcom/agc/widget/cure/CureGridViewLayout;->openActionUpToSave(Lcom/agc/widget/cure/CureGridViewLayout$OnCureDoneListener;)V

    invoke-virtual {p0, v0}, Landroid/app/Dialog;->setContentView(Landroid/view/View;)V

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Landroid/app/Dialog;->setCanceledOnTouchOutside(Z)V

    invoke-virtual {p0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v0

    const/16 v1, 0x154

    invoke-static {p1, v1}, Lcom/agc/asv/DisplayHelper;->dp2px(Landroid/content/Context;I)I

    move-result v1

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->width:I

    const/16 v1, -0x32

    invoke-static {p1, v1}, Lcom/agc/asv/DisplayHelper;->dp2px(Landroid/content/Context;I)I

    move-result p1

    iput p1, v0, Landroid/view/WindowManager$LayoutParams;->y:I

    invoke-virtual {p0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object p1

    invoke-virtual {p1, v0}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    return-void
.end method
