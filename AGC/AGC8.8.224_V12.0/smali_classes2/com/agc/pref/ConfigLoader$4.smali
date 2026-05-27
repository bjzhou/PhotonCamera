.class Lcom/agc/pref/ConfigLoader$4;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/widget/CompoundButton$OnCheckedChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/agc/pref/ConfigLoader;->getTitleView()Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/agc/pref/ConfigLoader;


# direct methods
.method public constructor <init>(Lcom/agc/pref/ConfigLoader;)V
    .locals 0

    iput-object p1, p0, Lcom/agc/pref/ConfigLoader$4;->this$0:Lcom/agc/pref/ConfigLoader;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCheckedChanged(Landroid/widget/CompoundButton;Z)V
    .locals 0

    iget-object p1, p0, Lcom/agc/pref/ConfigLoader$4;->this$0:Lcom/agc/pref/ConfigLoader;

    invoke-static {p1, p2}, Lcom/agc/pref/ConfigLoader;->access$202(Lcom/agc/pref/ConfigLoader;Z)Z

    return-void
.end method
