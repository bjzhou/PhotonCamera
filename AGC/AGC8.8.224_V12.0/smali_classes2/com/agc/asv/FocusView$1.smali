.class Lcom/agc/asv/FocusView$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/agc/asv/RulerView$OnValueChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/agc/asv/FocusView;->init(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/agc/asv/FocusView;


# direct methods
.method public constructor <init>(Lcom/agc/asv/FocusView;)V
    .locals 0

    iput-object p1, p0, Lcom/agc/asv/FocusView$1;->this$0:Lcom/agc/asv/FocusView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onValueChange(F)V
    .locals 0

    iget-object p1, p0, Lcom/agc/asv/FocusView$1;->this$0:Lcom/agc/asv/FocusView;

    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Lcom/agc/asv/FocusView;->execCommands(Landroid/content/Context;)V

    return-void
.end method
