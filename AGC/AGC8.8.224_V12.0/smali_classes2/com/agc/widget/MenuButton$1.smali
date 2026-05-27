.class Lcom/agc/widget/MenuButton$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/agc/menu/ButtonEventListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/agc/widget/MenuButton;->setListener(Lcom/agc/menu/SectorMenuButton;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/agc/widget/MenuButton;


# direct methods
.method public constructor <init>(Lcom/agc/widget/MenuButton;)V
    .locals 0

    iput-object p1, p0, Lcom/agc/widget/MenuButton$1;->this$0:Lcom/agc/widget/MenuButton;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onButtonClicked(I)V
    .locals 0

    invoke-static {p1}, Lcom/Utils/Lens;->setAuxKey(I)V

    invoke-static {}, Lcom/Globals;->onRestart()V

    return-void
.end method

.method public onCollapse()V
    .locals 0

    return-void
.end method

.method public onExpand()V
    .locals 0

    return-void
.end method
