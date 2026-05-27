.class public Lcom/agc/widget/cure/CureGridViewLayout$CureValue;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/agc/widget/cure/CureGridViewLayout;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "CureValue"
.end annotation


# instance fields
.field public key:Ljava/lang/String;

.field final synthetic this$0:Lcom/agc/widget/cure/CureGridViewLayout;

.field public value:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/agc/widget/cure/CureGridViewLayout;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/agc/widget/cure/CureGridViewLayout$CureValue;->this$0:Lcom/agc/widget/cure/CureGridViewLayout;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lcom/agc/widget/cure/CureGridViewLayout$CureValue;->key:Ljava/lang/String;

    iput-object p3, p0, Lcom/agc/widget/cure/CureGridViewLayout$CureValue;->value:Ljava/lang/String;

    return-void
.end method
