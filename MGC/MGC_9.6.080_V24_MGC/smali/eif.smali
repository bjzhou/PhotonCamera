.class final Leif;
.super Luci;
.source "PG"

# interfaces
.implements Lubq;


# instance fields
.field final synthetic a:Leid;


# direct methods
.method public constructor <init>(Leid;)V
    .locals 0

    goto/32 :goto_0

    nop

    nop

    :goto_0
    iput-object p1, p0, Leif;->a:Leid;

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop

    :goto_1
    return-void

    nop

    nop

    nop

    nop

    :goto_2
    const/4 p1, 0x4

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    nop

    :goto_3
    invoke-direct {p0, p1}, Luci;-><init>(I)V

    goto/32 :goto_1

    nop

    nop
.end method


# virtual methods
.method public final bridge synthetic a(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    goto/32 :goto_0

    nop

    nop

    nop

    :goto_0
    check-cast p1, Landroid/database/sqlite/SQLiteDatabase;

    nop

    nop

    nop

    goto/32 :goto_a

    nop

    nop

    nop

    :goto_1
    invoke-direct {p0, p2, p3, p4}, Landroid/database/sqlite/SQLiteCursor;-><init>(Landroid/database/sqlite/SQLiteCursorDriver;Ljava/lang/String;Landroid/database/sqlite/SQLiteQuery;)V

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    :goto_2
    return-object p0

    nop

    nop

    nop

    nop

    nop

    :goto_3
    invoke-direct {p1, p4}, Leim;-><init>(Landroid/database/sqlite/SQLiteProgram;)V

    goto/32 :goto_6

    nop

    nop

    nop

    nop

    :goto_4
    new-instance p0, Landroid/database/sqlite/SQLiteCursor;

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    :goto_5
    invoke-interface {p0, p1}, Leid;->h(Leic;)V

    goto/32 :goto_4

    nop

    nop

    :goto_6
    iget-object p0, p0, Leif;->a:Leid;

    nop

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    :goto_7
    new-instance p1, Leim;

    nop

    goto/32 :goto_b

    nop

    nop

    nop

    :goto_8
    check-cast p4, Landroid/database/sqlite/SQLiteQuery;

    nop

    nop

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    nop

    nop

    :goto_9
    check-cast p3, Ljava/lang/String;

    nop

    goto/32 :goto_8

    nop

    nop

    nop

    :goto_a
    check-cast p2, Landroid/database/sqlite/SQLiteCursorDriver;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_9

    nop

    nop

    nop

    :goto_b
    invoke-virtual {p4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    nop
.end method
