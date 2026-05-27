.class public Lcom/agc/model/LutListModel;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/agc/model/LutListModel$LutModel;
    }
.end annotation


# instance fields
.field private id:Ljava/lang/Integer;

.field private list:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/agc/model/LutListModel$LutModel;",
            ">;"
        }
    .end annotation
.end field

.field private name:Ljava/lang/String;

.field private nameCn:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getId()Ljava/lang/Integer;
    .locals 1

    iget-object v0, p0, Lcom/agc/model/LutListModel;->id:Ljava/lang/Integer;

    return-object v0
.end method

.method public getList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/agc/model/LutListModel$LutModel;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/agc/model/LutListModel;->list:Ljava/util/List;

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/agc/model/LutListModel;->name:Ljava/lang/String;

    return-object v0
.end method

.method public getNameCn()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/agc/model/LutListModel;->nameCn:Ljava/lang/String;

    return-object v0
.end method

.method public setId(Ljava/lang/Integer;)V
    .locals 0

    iput-object p1, p0, Lcom/agc/model/LutListModel;->id:Ljava/lang/Integer;

    return-void
.end method

.method public setList(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/agc/model/LutListModel$LutModel;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/agc/model/LutListModel;->list:Ljava/util/List;

    return-void
.end method

.method public setName(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/agc/model/LutListModel;->name:Ljava/lang/String;

    return-void
.end method

.method public setNameCn(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/agc/model/LutListModel;->nameCn:Ljava/lang/String;

    return-void
.end method
