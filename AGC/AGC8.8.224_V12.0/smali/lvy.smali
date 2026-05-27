.class public final Llvy;
.super Ljava/lang/Object;

# interfaces
.implements Lluj;


# instance fields
.field public final a:Llzz;

.field public final b:Llyd;

.field private final c:Lkrn;

.field private final d:Lopq;

.field private final e:Llyd;


# direct methods
.method public constructor <init>(Lkrn;Llzz;Llwh;Llzx;Llyd;Lopq;Llyd;Llyh;Llwc;Landroidx/wear/ambient/AmbientMode$AmbientController;Llvr;[B[B[B)V
    .locals 0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p7}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p8}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p9}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p10}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p11}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Llvy;->c:Lkrn;

    iput-object p2, p0, Llvy;->a:Llzz;

    iput-object p5, p0, Llvy;->b:Llyd;

    iput-object p6, p0, Llvy;->d:Lopq;

    iput-object p7, p0, Llvy;->e:Llyd;

    return-void
.end method


# virtual methods
.method public final a(Ljava/util/Set;Ljava/util/List;)Lott;
    .locals 12

    new-instance v0, Lluv;

    invoke-direct {v0, p1, p2}, Lluv;-><init>(Ljava/util/Set;Ljava/util/List;)V

    new-instance p2, Llzy;

    iget-object v1, p0, Llvy;->c:Lkrn;

    const/4 v2, 0x0

    invoke-direct {p2, v1, v0, v2, v2}, Llzy;-><init>(Lkrn;Lllj;[B[B)V

    iget-object v0, p0, Llvy;->e:Llyd;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v3, "SELECT * FROM ResourceEntity"

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    check-cast p1, Lmzg;

    invoke-virtual {p1}, Lmzg;->cz()Lnac;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_8

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lllj;

    instance-of v6, v5, Llut;

    if-nez v6, :cond_7

    instance-of v6, v5, Lluu;

    if-nez v6, :cond_6

    instance-of v6, v5, Llus;

    if-nez v6, :cond_5

    instance-of v6, v5, Llvh;

    if-nez v6, :cond_4

    instance-of v6, v5, Lluw;

    if-nez v6, :cond_3

    instance-of v6, v5, Llvi;

    if-nez v6, :cond_2

    instance-of v6, v5, Llum;

    if-eqz v6, :cond_0

    check-cast v5, Llum;

    iget-object v6, v5, Llum;->a:Ljava/util/Set;

    const-string v7, ","

    const-string v8, "("

    const-string v9, ")"

    sget-object v10, Lawu;->f:Lawu;

    const/16 v11, 0x18

    invoke-static/range {v6 .. v11}, Lljr;->aq(Ljava/lang/Iterable;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Lomk;I)Ljava/lang/String;

    move-result-object v5

    const-string v6, "status_airlockFileState IN "

    invoke-virtual {v6, v5}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-interface {v3, v5}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    instance-of v6, v5, Llvl;

    if-nez v6, :cond_1

    goto :goto_0

    :cond_1
    check-cast v5, Llvl;

    throw v2

    :cond_2
    check-cast v5, Llvi;

    throw v2

    :cond_3
    check-cast v5, Lluw;

    throw v2

    :cond_4
    check-cast v5, Llvh;

    throw v2

    :cond_5
    check-cast v5, Llus;

    throw v2

    :cond_6
    check-cast v5, Lluu;

    throw v2

    :cond_7
    check-cast v5, Llut;

    throw v2

    :cond_8
    invoke-interface {v4}, Ljava/util/Collection;->isEmpty()Z

    move-result p1

    if-nez p1, :cond_9

    const-string p1, " JOIN ResourceFts ON ResourceEntity.onDeviceId == ResourceFts.docid"

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, " AND "

    const-string v6, "( ResourceFts MATCH "

    const-string v7, ")"

    const/4 v8, 0x0

    const/16 v9, 0x38

    invoke-static/range {v4 .. v9}, Lljr;->aq(Ljava/lang/Iterable;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Lomk;I)Ljava/lang/String;

    move-result-object p1

    invoke-interface {v3, p1}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    :cond_9
    invoke-interface {v3}, Ljava/util/Collection;->isEmpty()Z

    move-result p1

    if-nez p1, :cond_a

    const-string p1, " AND "

    const-string v4, " WHERE "

    const/16 v5, 0x78

    invoke-static {v3, v1, p1, v4, v5}, Lljr;->as(Ljava/lang/Iterable;Ljava/lang/Appendable;Ljava/lang/CharSequence;Ljava/lang/CharSequence;I)V

    :cond_a
    new-instance p1, Laqo;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p1, v1}, Laqo;-><init>(Ljava/lang/String;)V

    iget-object v1, v0, Llyd;->a:Ljava/lang/Object;

    const/4 v3, 0x1

    new-array v4, v3, [Ljava/lang/String;

    const/4 v5, 0x0

    const-string v6, "ResourceEntity"

    aput-object v6, v4, v5

    new-instance v5, Llye;

    invoke-direct {v5, v0, p1}, Llye;-><init>(Llyd;Laqv;)V

    new-instance p1, Lapi;

    check-cast v1, Lapt;

    invoke-direct {p1, v1, v4, v5, v2}, Lapi;-><init>(Lapt;[Ljava/lang/String;Ljava/util/concurrent/Callable;Loku;)V

    invoke-static {p1}, Lone;->u(Lomo;)Lott;

    move-result-object p1

    invoke-static {p1}, Louc;->a(Lott;)Lott;

    move-result-object p1

    new-instance v0, Louf;

    invoke-direct {v0, p1, p0, v3}, Louf;-><init>(Lott;Llvy;I)V

    new-instance p1, Loni;

    invoke-direct {p1}, Loni;-><init>()V

    iput-boolean v3, p1, Loni;->a:Z

    new-instance v1, Llvv;

    invoke-direct {v1, v0, p1, p0, p2}, Llvv;-><init>(Lott;Loni;Llvy;Llzy;)V

    new-instance p1, Llvw;

    invoke-direct {p1, p0, p2, v2}, Llvw;-><init>(Llvy;Llzy;Loku;)V

    invoke-static {v1, p1}, Lone;->p(Lott;Lomp;)Lott;

    move-result-object p1

    iget-object p2, p0, Llvy;->d:Lopq;

    sget-object v0, Lora;->c:Lokv;

    invoke-interface {p2, v0}, Lola;->get(Loky;)Lokx;

    move-result-object v0

    if-nez v0, :cond_c

    sget-object v0, Lolb;->a:Lolb;

    invoke-static {p2, v0}, Lone;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_b

    return-object p1

    :cond_b
    new-instance v0, Lovk;

    invoke-direct {v0, p1, p2}, Lovk;-><init>(Lott;Lola;)V

    return-object v0

    :cond_c
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Flow context cannot contain job in it. Had "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    new-instance p2, Ljava/lang/IllegalArgumentException;

    invoke-direct {p2, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    goto :goto_2

    :goto_1
    throw p2

    :goto_2
    goto :goto_1
.end method
