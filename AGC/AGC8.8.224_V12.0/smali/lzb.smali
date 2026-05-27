.class public final synthetic Llzb;
.super Ljava/lang/Object;

# interfaces
.implements Lomk;


# instance fields
.field public final synthetic a:Llzn;

.field public final synthetic b:Llyf;

.field public final synthetic c:Llwq;

.field public final synthetic d:Z

.field public final synthetic e:Lomk;


# direct methods
.method public synthetic constructor <init>(Llzn;Llyf;Llwq;ZLomk;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Llzb;->a:Llzn;

    iput-object p2, p0, Llzb;->b:Llyf;

    iput-object p3, p0, Llzb;->c:Llwq;

    iput-boolean p4, p0, Llzb;->d:Z

    iput-object p5, p0, Llzb;->e:Lomk;

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 6

    iget-object v0, p0, Llzb;->a:Llzn;

    iget-object v1, p0, Llzb;->b:Llyf;

    iget-object v2, p0, Llzb;->c:Llwq;

    iget-boolean v3, p0, Llzb;->d:Z

    iget-object v4, p0, Llzb;->e:Lomk;

    move-object v5, p1

    check-cast v5, Loku;

    invoke-static/range {v0 .. v5}, Llyz;->k(Llyz;Llyf;Llwq;ZLomk;Loku;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method
