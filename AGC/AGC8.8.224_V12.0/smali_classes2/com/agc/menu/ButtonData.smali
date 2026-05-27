.class public Lcom/agc/menu/ButtonData;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Cloneable;


# static fields
.field private static final DEFAULT_BACKGROUND_COLOR:I = -0x1


# instance fields
.field private backgroundColor:I

.field private icon:Landroid/graphics/drawable/Drawable;

.field private iconButton:Z

.field private iconPaddingDp:F

.field private isMainButton:Z

.field private texts:[Ljava/lang/String;


# direct methods
.method private constructor <init>(Z)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/agc/menu/ButtonData;->isMainButton:Z

    const/4 v0, -0x1

    iput v0, p0, Lcom/agc/menu/ButtonData;->backgroundColor:I

    iput-boolean p1, p0, Lcom/agc/menu/ButtonData;->iconButton:Z

    return-void
.end method

.method public static buildIconButton(Landroid/content/Context;IF)Lcom/agc/menu/ButtonData;
    .locals 2

    new-instance v0, Lcom/agc/menu/ButtonData;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lcom/agc/menu/ButtonData;-><init>(Z)V

    iput-boolean v1, v0, Lcom/agc/menu/ButtonData;->iconButton:Z

    iput p2, v0, Lcom/agc/menu/ButtonData;->iconPaddingDp:F

    invoke-virtual {v0, p0, p1}, Lcom/agc/menu/ButtonData;->setIconResId(Landroid/content/Context;I)V

    return-object v0
.end method

.method public static varargs buildTextButton([Ljava/lang/String;)Lcom/agc/menu/ButtonData;
    .locals 2

    new-instance v0, Lcom/agc/menu/ButtonData;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/agc/menu/ButtonData;-><init>(Z)V

    iput-boolean v1, v0, Lcom/agc/menu/ButtonData;->iconButton:Z

    invoke-virtual {v0, p0}, Lcom/agc/menu/ButtonData;->setText([Ljava/lang/String;)V

    return-object v0
.end method


# virtual methods
.method public clone()Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    invoke-super {p0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/agc/menu/ButtonData;

    iget-boolean v1, p0, Lcom/agc/menu/ButtonData;->iconButton:Z

    invoke-virtual {v0, v1}, Lcom/agc/menu/ButtonData;->setIsIconButton(Z)V

    iget v1, p0, Lcom/agc/menu/ButtonData;->backgroundColor:I

    invoke-virtual {v0, v1}, Lcom/agc/menu/ButtonData;->setBackgroundColor(I)V

    iget-boolean v1, p0, Lcom/agc/menu/ButtonData;->isMainButton:Z

    invoke-virtual {v0, v1}, Lcom/agc/menu/ButtonData;->setIsMainButton(Z)V

    iget-object v1, p0, Lcom/agc/menu/ButtonData;->icon:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, v1}, Lcom/agc/menu/ButtonData;->setIcon(Landroid/graphics/drawable/Drawable;)V

    iget v1, p0, Lcom/agc/menu/ButtonData;->iconPaddingDp:F

    invoke-virtual {v0, v1}, Lcom/agc/menu/ButtonData;->setIconPaddingDp(F)V

    iget-object v1, p0, Lcom/agc/menu/ButtonData;->texts:[Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/agc/menu/ButtonData;->setTexts([Ljava/lang/String;)V

    return-object v0
.end method

.method public getBackgroundColor()I
    .locals 1

    iget v0, p0, Lcom/agc/menu/ButtonData;->backgroundColor:I

    return v0
.end method

.method public getIcon()Landroid/graphics/drawable/Drawable;
    .locals 1

    iget-object v0, p0, Lcom/agc/menu/ButtonData;->icon:Landroid/graphics/drawable/Drawable;

    return-object v0
.end method

.method public getIconPaddingDp()F
    .locals 1

    iget v0, p0, Lcom/agc/menu/ButtonData;->iconPaddingDp:F

    return v0
.end method

.method public getTexts()[Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/agc/menu/ButtonData;->texts:[Ljava/lang/String;

    return-object v0
.end method

.method public isIconButton()Z
    .locals 1

    iget-boolean v0, p0, Lcom/agc/menu/ButtonData;->iconButton:Z

    return v0
.end method

.method public isMainButton()Z
    .locals 1

    iget-boolean v0, p0, Lcom/agc/menu/ButtonData;->isMainButton:Z

    return v0
.end method

.method public setBackgroundColor(I)V
    .locals 0

    iput p1, p0, Lcom/agc/menu/ButtonData;->backgroundColor:I

    return-void
.end method

.method public setBackgroundColorId(Landroid/content/Context;I)V
    .locals 0

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getColor(I)I

    move-result p1

    iput p1, p0, Lcom/agc/menu/ButtonData;->backgroundColor:I

    return-void
.end method

.method public setIcon(Landroid/graphics/drawable/Drawable;)V
    .locals 0

    iput-object p1, p0, Lcom/agc/menu/ButtonData;->icon:Landroid/graphics/drawable/Drawable;

    return-void
.end method

.method public setIconPaddingDp(F)V
    .locals 0

    iput p1, p0, Lcom/agc/menu/ButtonData;->iconPaddingDp:F

    return-void
.end method

.method public setIconResId(Landroid/content/Context;I)V
    .locals 0

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    iput-object p1, p0, Lcom/agc/menu/ButtonData;->icon:Landroid/graphics/drawable/Drawable;

    return-void
.end method

.method public setIsIconButton(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/agc/menu/ButtonData;->iconButton:Z

    return-void
.end method

.method public setIsMainButton(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/agc/menu/ButtonData;->isMainButton:Z

    return-void
.end method

.method public varargs setText([Ljava/lang/String;)V
    .locals 4

    array-length v0, p1

    new-array v0, v0, [Ljava/lang/String;

    iput-object v0, p0, Lcom/agc/menu/ButtonData;->texts:[Ljava/lang/String;

    array-length v0, p1

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    iget-object v2, p0, Lcom/agc/menu/ButtonData;->texts:[Ljava/lang/String;

    aget-object v3, p1, v1

    aput-object v3, v2, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public setTexts([Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/agc/menu/ButtonData;->texts:[Ljava/lang/String;

    return-void
.end method
